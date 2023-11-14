from mirai_translate import Client

def split_text(text, max_length):
    paragraphs = text.split('\n\n')  # 假设段落之间用两个换行符分隔
    result = []
    current_paragraph = ''

    for paragraph in paragraphs:
        if len(current_paragraph) + len(paragraph) + 2 <= max_length:  # 加上当前段落长度和换行符的长度
            current_paragraph += paragraph + '\n\n'
        else:
            result.append(current_paragraph.strip())
            current_paragraph = paragraph + '\n\n'

    if current_paragraph:
        result.append(current_paragraph.strip())

    return result

cli = Client()
with open('/home/xuxin/文档/novel.txt') as f:
    contents = f.read()
    paragraphs = split_text(contents, 2000)
for paragraph in paragraphs:
    translated_text = cli.translate(paragraph, 'ja', 'zh')
    print(translated_text)
