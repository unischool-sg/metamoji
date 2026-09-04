.class Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;
.super Ljava/io/FilterOutputStream;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/xml/XmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurrogateCharRefOutputStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;
    }
.end annotation


# static fields
.field static final NOT_HIGH_SURROGATE:C


# instance fields
.field private _highSurrogate:C

.field private _isHex:Z

.field private _state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

.field private _stockDigits:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    sget-object p1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->NONE:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_isHex:Z

    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_stockDigits:Ljava/io/ByteArrayOutputStream;

    .line 73
    iput-char p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_highSurrogate:C

    return-void
.end method

.method private flushHighSurrogate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-char v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_highSurrogate:C

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 144
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 145
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    iget-char v1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_highSurrogate:C

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 146
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 147
    iput-char v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_highSurrogate:C

    :cond_0
    return-void
.end method

.method private handleCharReferenceDigits()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->parseStockDigits()C

    move-result v0

    .line 153
    iget-char v1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_highSurrogate:C

    const/16 v2, 0x3b

    const/16 v3, 0x23

    const/16 v4, 0x26

    const v5, 0xd800

    if-eqz v1, :cond_1

    const v6, 0xdc00

    if-gt v6, v0, :cond_0

    const v7, 0xdfff

    if-gt v0, v7, :cond_0

    sub-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v6

    add-int/2addr v1, v0

    const/high16 v0, 0x10000

    add-int/2addr v1, v0

    .line 157
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 158
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 159
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 160
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 161
    iput-char v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_highSurrogate:C

    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->flushHighSurrogate()V

    :cond_1
    if-gt v5, v0, :cond_2

    const v1, 0xdbff

    if-gt v0, v1, :cond_2

    .line 169
    iput-char v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_highSurrogate:C

    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 172
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 173
    iget-boolean v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_isHex:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_stockDigits:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 175
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private parseStockDigits()C
    .locals 3

    const/4 v0, 0x0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_stockDigits:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_isHex:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v1, :cond_1

    const v2, 0xffff

    if-gt v1, v2, :cond_1

    int-to-char v0, v1

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    invoke-virtual {v0}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->ordinal()I

    move-result v0

    const/16 v1, 0x26

    if-eqz v0, :cond_7

    const/16 v2, 0x23

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    const/16 v5, 0x3b

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v5, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->handleCharReferenceDigits()V

    .line 132
    iget-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_stockDigits:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 133
    sget-object p1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->NONE:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_stockDigits:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_2
    const/16 v0, 0x78

    if-ne p1, v0, :cond_3

    .line 115
    iput-boolean v3, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_isHex:Z

    .line 116
    sget-object p1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->IN_DIGITS:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-void

    :cond_3
    if-ne p1, v5, :cond_4

    .line 118
    invoke-direct {p0}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->flushHighSurrogate()V

    .line 119
    iget-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 120
    iget-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 121
    iget-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 122
    sget-object p1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->NONE:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-void

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_stockDigits:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_isHex:Z

    .line 126
    sget-object p1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->IN_DIGITS:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-void

    :cond_5
    if-ne p1, v2, :cond_6

    .line 105
    sget-object p1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->AFTER_HASH:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-void

    .line 107
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->flushHighSurrogate()V

    .line 108
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 109
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 110
    sget-object p1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->NONE:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-void

    :cond_7
    if-ne p1, v1, :cond_8

    .line 97
    sget-object p1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->AFTER_AMPERSAND:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->_state:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-void

    .line 99
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->flushHighSurrogate()V

    .line 100
    iget-object v0, p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
