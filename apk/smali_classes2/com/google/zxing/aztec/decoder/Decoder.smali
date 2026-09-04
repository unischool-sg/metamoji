.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x20

    .line 46
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CTRL_PS"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, " "

    aput-object v5, v1, v4

    const-string v6, "A"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v6, "B"

    const/4 v8, 0x3

    aput-object v6, v1, v8

    const-string v6, "C"

    const/4 v9, 0x4

    aput-object v6, v1, v9

    const-string v6, "D"

    const/4 v10, 0x5

    aput-object v6, v1, v10

    const-string v6, "E"

    const/4 v11, 0x6

    aput-object v6, v1, v11

    const-string v6, "F"

    const/4 v12, 0x7

    aput-object v6, v1, v12

    const-string v6, "G"

    const/16 v13, 0x8

    aput-object v6, v1, v13

    const-string v6, "H"

    const/16 v14, 0x9

    aput-object v6, v1, v14

    const-string v6, "I"

    const/16 v15, 0xa

    aput-object v6, v1, v15

    const-string v6, "J"

    const/16 v16, 0xb

    aput-object v6, v1, v16

    const-string v6, "K"

    const/16 v17, 0xc

    aput-object v6, v1, v17

    const-string v6, "L"

    const/16 v18, 0xd

    aput-object v6, v1, v18

    const-string v6, "M"

    const/16 v19, 0xe

    aput-object v6, v1, v19

    const-string v6, "N"

    const/16 v20, 0xf

    aput-object v6, v1, v20

    const-string v6, "O"

    move/from16 v21, v2

    const/16 v2, 0x10

    aput-object v6, v1, v2

    const-string v6, "P"

    const/16 v22, 0x11

    aput-object v6, v1, v22

    const-string v6, "Q"

    const/16 v23, 0x12

    aput-object v6, v1, v23

    const/16 v6, 0x13

    const-string v24, "R"

    aput-object v24, v1, v6

    const/16 v6, 0x14

    const-string v24, "S"

    aput-object v24, v1, v6

    const/16 v6, 0x15

    const-string v24, "T"

    aput-object v24, v1, v6

    const/16 v6, 0x16

    const-string v24, "U"

    aput-object v24, v1, v6

    const/16 v6, 0x17

    const-string v24, "V"

    aput-object v24, v1, v6

    const/16 v6, 0x18

    const-string v24, "W"

    aput-object v24, v1, v6

    const/16 v6, 0x19

    const-string v24, "X"

    aput-object v24, v1, v6

    const/16 v6, 0x1a

    const-string v24, "Y"

    aput-object v24, v1, v6

    const/16 v6, 0x1b

    const-string v24, "Z"

    aput-object v24, v1, v6

    const/16 v6, 0x1c

    const-string v24, "CTRL_LL"

    aput-object v24, v1, v6

    const/16 v6, 0x1d

    const-string v24, "CTRL_ML"

    aput-object v24, v1, v6

    const/16 v6, 0x1e

    const-string v24, "CTRL_DL"

    aput-object v24, v1, v6

    const/16 v6, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v1, v6

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 51
    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v21

    aput-object v5, v1, v4

    const-string v6, "a"

    aput-object v6, v1, v7

    const-string v6, "b"

    aput-object v6, v1, v8

    const-string v6, "c"

    aput-object v6, v1, v9

    const-string v6, "d"

    aput-object v6, v1, v10

    const-string v6, "e"

    aput-object v6, v1, v11

    const-string v6, "f"

    aput-object v6, v1, v12

    const-string v6, "g"

    aput-object v6, v1, v13

    const-string v6, "h"

    aput-object v6, v1, v14

    const-string v6, "i"

    aput-object v6, v1, v15

    const-string v6, "j"

    aput-object v6, v1, v16

    const-string v6, "k"

    aput-object v6, v1, v17

    const-string v6, "l"

    aput-object v6, v1, v18

    const-string v6, "m"

    aput-object v6, v1, v19

    const-string v6, "n"

    aput-object v6, v1, v20

    const-string v6, "o"

    aput-object v6, v1, v2

    const-string v6, "p"

    aput-object v6, v1, v22

    const-string v6, "q"

    aput-object v6, v1, v23

    const/16 v6, 0x13

    const-string v24, "r"

    aput-object v24, v1, v6

    const/16 v6, 0x14

    const-string v24, "s"

    aput-object v24, v1, v6

    const/16 v6, 0x15

    const-string v24, "t"

    aput-object v24, v1, v6

    const/16 v6, 0x16

    const-string v24, "u"

    aput-object v24, v1, v6

    const/16 v6, 0x17

    const-string v24, "v"

    aput-object v24, v1, v6

    const/16 v6, 0x18

    const-string v24, "w"

    aput-object v24, v1, v6

    const/16 v6, 0x19

    const-string v24, "x"

    aput-object v24, v1, v6

    const/16 v6, 0x1a

    const-string v24, "y"

    aput-object v24, v1, v6

    const/16 v6, 0x1b

    const-string v24, "z"

    aput-object v24, v1, v6

    const/16 v6, 0x1c

    const-string v24, "CTRL_US"

    aput-object v24, v1, v6

    const/16 v6, 0x1d

    const-string v24, "CTRL_ML"

    aput-object v24, v1, v6

    const/16 v6, 0x1e

    const-string v24, "CTRL_DL"

    aput-object v24, v1, v6

    const/16 v6, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v1, v6

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 56
    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v21

    aput-object v5, v1, v4

    const-string v6, "\u0001"

    aput-object v6, v1, v7

    const-string v6, "\u0002"

    aput-object v6, v1, v8

    const-string v6, "\u0003"

    aput-object v6, v1, v9

    const-string v6, "\u0004"

    aput-object v6, v1, v10

    const-string v6, "\u0005"

    aput-object v6, v1, v11

    const-string v6, "\u0006"

    aput-object v6, v1, v12

    const-string v6, "\u0007"

    aput-object v6, v1, v13

    const-string v6, "\u0008"

    aput-object v6, v1, v14

    const-string v6, "\t"

    aput-object v6, v1, v15

    const-string v6, "\n"

    aput-object v6, v1, v16

    const-string v6, "\u000b"

    aput-object v6, v1, v17

    const-string v6, "\u000c"

    aput-object v6, v1, v18

    const-string v6, "\r"

    aput-object v6, v1, v19

    const-string v6, "\u001b"

    aput-object v6, v1, v20

    const-string v6, "\u001c"

    aput-object v6, v1, v2

    const-string v6, "\u001d"

    aput-object v6, v1, v22

    const-string v6, "\u001e"

    aput-object v6, v1, v23

    const/16 v6, 0x13

    const-string v24, "\u001f"

    aput-object v24, v1, v6

    const/16 v6, 0x14

    const-string v24, "@"

    aput-object v24, v1, v6

    const/16 v6, 0x15

    const-string v24, "\\"

    aput-object v24, v1, v6

    const/16 v6, 0x16

    const-string v24, "^"

    aput-object v24, v1, v6

    const/16 v6, 0x17

    const-string v24, "_"

    aput-object v24, v1, v6

    const/16 v6, 0x18

    const-string v24, "`"

    aput-object v24, v1, v6

    const/16 v6, 0x19

    const-string v24, "|"

    aput-object v24, v1, v6

    const/16 v6, 0x1a

    const-string v24, "~"

    aput-object v24, v1, v6

    const/16 v6, 0x1b

    const-string v24, "\u007f"

    aput-object v24, v1, v6

    const/16 v6, 0x1c

    const-string v24, "CTRL_LL"

    aput-object v24, v1, v6

    const/16 v6, 0x1d

    const-string v24, "CTRL_UL"

    aput-object v24, v1, v6

    const/16 v6, 0x1e

    const-string v24, "CTRL_PL"

    aput-object v24, v1, v6

    const/16 v6, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v1, v6

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 62
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v21

    const-string v1, "\r"

    aput-object v1, v0, v4

    const-string v1, "\r\n"

    aput-object v1, v0, v7

    const-string v1, ". "

    aput-object v1, v0, v8

    const-string v1, ", "

    aput-object v1, v0, v9

    const-string v1, ": "

    aput-object v1, v0, v10

    const-string v1, "!"

    aput-object v1, v0, v11

    const-string v1, "\""

    aput-object v1, v0, v12

    const-string v1, "#"

    aput-object v1, v0, v13

    const-string v1, "$"

    aput-object v1, v0, v14

    const-string v1, "%"

    aput-object v1, v0, v15

    const-string v1, "&"

    aput-object v1, v0, v16

    const-string v1, "\'"

    aput-object v1, v0, v17

    const-string v1, "("

    aput-object v1, v0, v18

    const-string v1, ")"

    aput-object v1, v0, v19

    const-string v1, "*"

    aput-object v1, v0, v20

    const-string v1, "+"

    aput-object v1, v0, v2

    const-string v1, ","

    aput-object v1, v0, v22

    const-string v1, "-"

    aput-object v1, v0, v23

    const/16 v1, 0x13

    const-string v6, "."

    aput-object v6, v0, v1

    const/16 v1, 0x14

    const-string v6, "/"

    aput-object v6, v0, v1

    const/16 v1, 0x15

    const-string v6, ":"

    aput-object v6, v0, v1

    const/16 v1, 0x16

    const-string v6, ";"

    aput-object v6, v0, v1

    const/16 v1, 0x17

    const-string v6, "<"

    aput-object v6, v0, v1

    const/16 v1, 0x18

    const-string v6, "="

    aput-object v6, v0, v1

    const/16 v1, 0x19

    const-string v6, ">"

    aput-object v6, v0, v1

    const/16 v1, 0x1a

    const-string v6, "?"

    aput-object v6, v0, v1

    const/16 v1, 0x1b

    const-string v6, "["

    aput-object v6, v0, v1

    const/16 v1, 0x1c

    const-string v6, "]"

    aput-object v6, v0, v1

    const/16 v1, 0x1d

    const-string v6, "{"

    aput-object v6, v0, v1

    const/16 v1, 0x1e

    const-string v6, "}"

    aput-object v6, v0, v1

    const/16 v1, 0x1f

    const-string v6, "CTRL_UL"

    aput-object v6, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    aput-object v3, v0, v21

    aput-object v5, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v7

    const-string v1, "1"

    aput-object v1, v0, v8

    const-string v1, "2"

    aput-object v1, v0, v9

    const-string v1, "3"

    aput-object v1, v0, v10

    const-string v1, "4"

    aput-object v1, v0, v11

    const-string v1, "5"

    aput-object v1, v0, v12

    const-string v1, "6"

    aput-object v1, v0, v13

    const-string v1, "7"

    aput-object v1, v0, v14

    const-string v1, "8"

    aput-object v1, v0, v15

    const-string v1, "9"

    aput-object v1, v0, v16

    const-string v1, ","

    aput-object v1, v0, v17

    const-string v1, "."

    aput-object v1, v0, v18

    const-string v1, "CTRL_UL"

    aput-object v1, v0, v19

    const-string v1, "CTRL_US"

    aput-object v1, v0, v20

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBoolArrayToByteArray([Z)[B
    .locals 4

    .line 356
    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    shl-int/lit8 v3, v2, 0x3

    .line 358
    invoke-static {p0, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readByte([ZI)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private correctBits([Z)[Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 211
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v2, 0x6

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 214
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v2, 0x16

    if-gt v0, v2, :cond_2

    .line 217
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v2, 0xa

    goto :goto_0

    .line 220
    :cond_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v2, 0xc

    .line 223
    :goto_0
    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v3

    .line 224
    array-length v4, p1

    div-int/2addr v4, v2

    if-lt v4, v3, :cond_e

    .line 228
    array-length v5, p1

    rem-int/2addr v5, v2

    .line 230
    new-array v6, v4, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v4, :cond_3

    .line 232
    invoke-static {p1, v5, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v2

    goto :goto_1

    .line 236
    :cond_3
    :try_start_0
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    sub-int/2addr v4, v3

    .line 237
    invoke-virtual {p1, v6, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    shl-int v0, p1, v2

    add-int/lit8 v4, v0, -0x1

    move v5, v7

    move v8, v5

    :goto_2
    if-ge v5, v3, :cond_7

    .line 247
    aget v9, v6, v5

    if-eqz v9, :cond_6

    if-eq v9, v4, :cond_6

    if-eq v9, p1, :cond_4

    add-int/lit8 v10, v0, -0x2

    if-ne v9, v10, :cond_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 249
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_7
    mul-int v4, v3, v2

    sub-int/2addr v4, v8

    .line 255
    new-array v4, v4, [Z

    move v5, v7

    move v8, v5

    :goto_3
    if-ge v5, v3, :cond_d

    .line 258
    aget v9, v6, v5

    if-eq v9, p1, :cond_a

    add-int/lit8 v10, v0, -0x2

    if-ne v9, v10, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v10, v2, -0x1

    :goto_4
    if-ltz v10, :cond_c

    add-int/lit8 v11, v8, 0x1

    shl-int v12, p1, v10

    and-int/2addr v12, v9

    if-eqz v12, :cond_9

    move v12, p1

    goto :goto_5

    :cond_9
    move v12, v7

    .line 265
    :goto_5
    aput-boolean v12, v4, v8

    add-int/lit8 v10, v10, -0x1

    move v8, v11

    goto :goto_4

    :cond_a
    :goto_6
    add-int v10, v8, v2

    sub-int/2addr v10, p1

    if-le v9, p1, :cond_b

    move v9, p1

    goto :goto_7

    :cond_b
    move v9, v7

    .line 261
    :goto_7
    invoke-static {v4, v8, v10, v9}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v9, v2, -0x1

    add-int/2addr v8, v9

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    return-object v4

    :catch_0
    move-exception p1

    .line 239
    invoke-static {p1}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 226
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 278
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    .line 279
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    if-eqz v2, :cond_0

    const/16 v4, 0xb

    goto :goto_0

    :cond_0
    const/16 v4, 0xe

    :goto_0
    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    .line 281
    new-array v5, v4, [I

    .line 282
    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v6

    new-array v6, v6, [Z

    const/4 v8, 0x2

    if-eqz v2, :cond_1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_2

    .line 286
    aput v9, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v4, 0x1

    .line 289
    div-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v10, -0x1

    div-int/lit8 v11, v11, 0xf

    mul-int/2addr v11, v8

    add-int/2addr v9, v11

    .line 291
    div-int/2addr v9, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_2

    .line 293
    div-int/lit8 v12, v11, 0xf

    add-int/2addr v12, v11

    sub-int v13, v10, v11

    add-int/lit8 v13, v13, -0x1

    sub-int v14, v9, v12

    add-int/lit8 v14, v14, -0x1

    .line 294
    aput v14, v5, v13

    add-int v13, v10, v11

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    .line 295
    aput v12, v5, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v9, v3, :cond_6

    sub-int v11, v3, v9

    shl-int/2addr v11, v8

    if-eqz v2, :cond_3

    const/16 v12, 0x9

    goto :goto_4

    :cond_3
    const/16 v12, 0xc

    :goto_4
    add-int/2addr v11, v12

    shl-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v4, -0x1

    sub-int/2addr v13, v12

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v11, :cond_5

    shl-int/lit8 v15, v14, 0x1

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_4

    add-int v16, v10, v15

    add-int v16, v16, v7

    add-int v17, v12, v7

    .line 309
    aget v8, v5, v17

    add-int v18, v12, v14

    aget v0, v5, v18

    .line 310
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v16

    mul-int/lit8 v0, v11, 0x2

    add-int/2addr v0, v10

    add-int/2addr v0, v15

    add-int/2addr v0, v7

    .line 312
    aget v8, v5, v18

    sub-int v16, v13, v7

    move/from16 v18, v0

    aget v0, v5, v16

    .line 313
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v18

    mul-int/lit8 v0, v11, 0x4

    add-int/2addr v0, v10

    add-int/2addr v0, v15

    add-int/2addr v0, v7

    .line 315
    aget v8, v5, v16

    sub-int v16, v13, v14

    move/from16 v18, v0

    aget v0, v5, v16

    .line 316
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v18

    mul-int/lit8 v0, v11, 0x6

    add-int/2addr v0, v10

    add-int/2addr v0, v15

    add-int/2addr v0, v7

    .line 318
    aget v8, v5, v16

    move/from16 v16, v0

    aget v0, v5, v17

    .line 319
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v16

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    goto :goto_6

    :cond_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    goto :goto_5

    :cond_5
    shl-int/lit8 v0, v11, 0x3

    add-int/2addr v10, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    goto :goto_3

    :cond_6
    return-object v6
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 1

    .line 182
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 192
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bad table"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 188
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 186
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 184
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 10

    .line 96
    array-length v0, p0

    .line 97
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 98
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_7

    .line 102
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v7, 0x5

    if-ne v2, v6, :cond_3

    sub-int v2, v0, v5

    if-lt v2, v7, :cond_7

    .line 106
    invoke-static {p0, v5, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v2

    add-int/lit8 v6, v5, 0x5

    if-nez v2, :cond_0

    sub-int v2, v0, v6

    const/16 v7, 0xb

    if-lt v2, v7, :cond_7

    .line 112
    invoke-static {p0, v6, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    add-int/lit8 v6, v5, 0x10

    :cond_0
    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_2

    sub-int v7, v0, v6

    const/16 v8, 0x8

    if-ge v7, v8, :cond_1

    move v5, v0

    goto :goto_2

    .line 120
    :cond_1
    invoke-static {p0, v6, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    int-to-char v7, v7

    .line 121
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_2
    move-object v2, v1

    goto :goto_0

    .line 127
    :cond_3
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v2, v6, :cond_4

    const/4 v6, 0x4

    goto :goto_3

    :cond_4
    move v6, v7

    :goto_3
    sub-int v8, v0, v5

    if-lt v8, v6, :cond_7

    .line 131
    invoke-static {p0, v5, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    add-int/2addr v5, v6

    .line 133
    invoke-static {v2, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v6

    .line 134
    const-string v8, "CTRL_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v1

    const/4 v7, 0x6

    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_0

    .line 145
    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 151
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_4

    const/16 v0, 0x44

    if-eq p0, v0, :cond_3

    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    .line 171
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 164
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 160
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 162
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 166
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 168
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readByte([ZI)B
    .locals 2

    .line 345
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 347
    invoke-static {p0, p1, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result p0

    :goto_0
    int-to-byte p0, p0

    return p0

    .line 349
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result p0

    sub-int/2addr v1, v0

    shl-int/2addr p0, v1

    goto :goto_0
.end method

.method private static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    .line 334
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    :goto_0
    shl-int/lit8 v0, p0, 0x4

    add-int/2addr p1, v0

    mul-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder;->convertBoolArrayToByteArray([Z)[B

    move-result-object v0

    .line 79
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/google/zxing/common/DecoderResult;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 81
    array-length p1, p1

    invoke-virtual {v2, p1}, Lcom/google/zxing/common/DecoderResult;->setNumBits(I)V

    return-object v2
.end method
