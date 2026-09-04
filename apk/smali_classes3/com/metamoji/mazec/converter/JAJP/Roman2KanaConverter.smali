.class public Lcom/metamoji/mazec/converter/JAJP/Roman2KanaConverter;
.super Ljava/lang/Object;
.source "Roman2KanaConverter.java"

# interfaces
.implements Lcom/metamoji/mazec/converter/LetterConverter;


# static fields
.field private static final MAX_LENGTH:I = 0x4

.field private static final convTbl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/metamoji/mazec/converter/JAJP/Roman2KanaConverter$1;

    invoke-direct {v0}, Lcom/metamoji/mazec/converter/JAJP/Roman2KanaConverter$1;-><init>()V

    sput-object v0, Lcom/metamoji/mazec/converter/JAJP/Roman2KanaConverter;->convTbl:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/metamoji/mazec/ComposingText;)Z
    .locals 12

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ComposingText;->getCursor(I)I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x4

    .line 148
    new-array v4, v3, [Lcom/metamoji/mazec/StrSegment;

    .line 150
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v0

    move v7, v3

    :goto_0
    if-gt v6, v5, :cond_1

    rsub-int/lit8 v8, v6, 0x4

    sub-int v9, v1, v6

    .line 152
    invoke-virtual {p1, v0, v9}, Lcom/metamoji/mazec/ComposingText;->getStrSegment(II)Lcom/metamoji/mazec/StrSegment;

    move-result-object v9

    aput-object v9, v4, v8

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    if-ge v7, v3, :cond_6

    move v5, v7

    :goto_2
    if-ge v5, v3, :cond_2

    .line 159
    aget-object v6, v4, v5

    iget-object v6, v6, Lcom/metamoji/mazec/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 161
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    .line 162
    sget-object v6, Lcom/metamoji/mazec/converter/JAJP/Roman2KanaConverter;->convTbl:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    if-eqz v5, :cond_3

    .line 165
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 168
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v0, :cond_4

    .line 169
    new-array v1, v0, [Lcom/metamoji/mazec/StrSegment;

    .line 170
    new-instance v8, Lcom/metamoji/mazec/StrSegment;

    aget-object v9, v4, v7

    iget v9, v9, Lcom/metamoji/mazec/StrSegment;->from:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/metamoji/mazec/StrSegment;->to:I

    invoke-direct {v8, v6, v9, v4}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v8, v1, v2

    sub-int/2addr v3, v7

    .line 171
    invoke-virtual {p1, v0, v1, v3}, Lcom/metamoji/mazec/ComposingText;->replaceStrSegment(I[Lcom/metamoji/mazec/StrSegment;I)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    .line 173
    new-array v1, v1, [Lcom/metamoji/mazec/StrSegment;

    .line 174
    new-instance v8, Lcom/metamoji/mazec/StrSegment;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v6, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v4, v7

    iget v10, v10, Lcom/metamoji/mazec/StrSegment;->from:I

    aget-object v11, v4, v5

    iget v11, v11, Lcom/metamoji/mazec/StrSegment;->to:I

    sub-int/2addr v11, v0

    invoke-direct {v8, v9, v10, v11}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v8, v1, v2

    .line 176
    new-instance v2, Lcom/metamoji/mazec/StrSegment;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aget-object v8, v4, v5

    iget v8, v8, Lcom/metamoji/mazec/StrSegment;->to:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/metamoji/mazec/StrSegment;->to:I

    invoke-direct {v2, v6, v8, v4}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v0

    sub-int/2addr v3, v7

    .line 178
    invoke-virtual {p1, v0, v1, v3}, Lcom/metamoji/mazec/ComposingText;->replaceStrSegment(I[Lcom/metamoji/mazec/StrSegment;I)V

    :goto_3
    return v0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_6
    return v2
.end method
