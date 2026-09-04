.class public Lcom/metamoji/mazec/ComposingText;
.super Ljava/lang/Object;
.source "ComposingText.java"


# static fields
.field public static final LAYER0:I = 0x0

.field public static final LAYER1:I = 0x1

.field public static final LAYER2:I = 0x2

.field public static final MAX_LAYER:I = 0x3


# instance fields
.field protected mCursor:[I

.field protected mStringLayer:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/StrSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 44
    new-array v1, v0, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    .line 45
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 47
    iget-object v3, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v2

    .line 48
    iget-object v3, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteStrSegment0(IIII)V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    if-eqz p4, :cond_0

    add-int/lit8 v0, p3, 0x1

    .line 372
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 373
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    .line 374
    iget v2, v1, Lcom/metamoji/mazec/StrSegment;->from:I

    sub-int/2addr v2, p4

    iput v2, v1, Lcom/metamoji/mazec/StrSegment;->from:I

    .line 375
    iget v2, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    sub-int/2addr v2, p4

    iput v2, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move p4, p2

    :goto_1
    if-gt p4, p3, :cond_1

    .line 379
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private included(II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 424
    iget-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    .line 425
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 426
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    .line 427
    iget v2, v1, Lcom/metamoji/mazec/StrSegment;->from:I

    if-gt v2, p2, :cond_1

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    if-gt p2, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private modifyUpper(IIII)V
    .locals 11

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 123
    iget-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    .line 129
    new-instance p2, Lcom/metamoji/mazec/StrSegment;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object p1, p4, p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-direct {p2, p3, v3, p1}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-direct {p0, v0, v3, v4, v3}, Lcom/metamoji/mazec/ComposingText;->modifyUpper(IIII)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p3, -0x1

    :goto_0
    add-int/2addr v2, p2

    if-nez p4, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, p4, -0x1

    :goto_1
    add-int/2addr v5, p2

    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/StrSegment;

    .line 137
    iget v7, v6, Lcom/metamoji/mazec/StrSegment;->to:I

    if-ge v7, p2, :cond_4

    .line 139
    iput v2, v6, Lcom/metamoji/mazec/StrSegment;->to:I

    .line 140
    iget p2, v6, Lcom/metamoji/mazec/StrSegment;->from:I

    iget p3, v6, Lcom/metamoji/mazec/StrSegment;->to:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/mazec/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/metamoji/mazec/StrSegment;->string:Ljava/lang/String;

    .line 141
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-direct {p0, v0, p1, v4, v4}, Lcom/metamoji/mazec/ComposingText;->modifyUpper(IIII)V

    return-void

    :cond_4
    const/4 v6, -0x1

    move v7, v6

    move v8, v7

    move v6, v3

    .line 147
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_a

    .line 148
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazec/StrSegment;

    .line 149
    iget v9, v8, Lcom/metamoji/mazec/StrSegment;->from:I

    if-le v9, p2, :cond_6

    .line 150
    iget v8, v8, Lcom/metamoji/mazec/StrSegment;->to:I

    if-gt v8, v5, :cond_5

    if-gez v7, :cond_9

    goto :goto_4

    :cond_5
    move v8, v6

    goto :goto_5

    :cond_6
    if-nez p4, :cond_7

    .line 162
    iget v7, v8, Lcom/metamoji/mazec/StrSegment;->from:I

    if-ne v7, p2, :cond_7

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 171
    :cond_7
    iget v7, v8, Lcom/metamoji/mazec/StrSegment;->to:I

    if-lt v7, v5, :cond_8

    :goto_3
    move v8, v6

    goto :goto_6

    :cond_8
    :goto_4
    move v7, v6

    :cond_9
    add-int/lit8 v8, v6, 0x1

    move v10, v8

    move v8, v6

    move v6, v10

    goto :goto_2

    :cond_a
    :goto_5
    move v6, v7

    :goto_6
    sub-int/2addr p3, p4

    if-ltz v6, :cond_f

    .line 181
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/StrSegment;

    .line 182
    iget p4, p2, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/lit8 v3, v6, 0x1

    move v5, v3

    :goto_7
    if-gt v5, v8, :cond_c

    .line 185
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/StrSegment;

    .line 186
    iget v7, p2, Lcom/metamoji/mazec/StrSegment;->to:I

    if-le p4, v7, :cond_b

    .line 187
    iget p4, p2, Lcom/metamoji/mazec/StrSegment;->to:I

    .line 189
    :cond_b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_c
    if-ge p4, v2, :cond_d

    goto :goto_8

    :cond_d
    add-int v2, p4, p3

    .line 191
    :goto_8
    iput v2, p2, Lcom/metamoji/mazec/StrSegment;->to:I

    .line 193
    iget p4, p2, Lcom/metamoji/mazec/StrSegment;->from:I

    iget v2, p2, Lcom/metamoji/mazec/StrSegment;->to:I

    invoke-virtual {p0, p1, p4, v2}, Lcom/metamoji/mazec/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/metamoji/mazec/StrSegment;->string:Ljava/lang/String;

    .line 195
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_e

    .line 196
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/StrSegment;

    .line 197
    iget p2, p1, Lcom/metamoji/mazec/StrSegment;->from:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/metamoji/mazec/StrSegment;->from:I

    .line 198
    iget p2, p1, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    sub-int/2addr v8, v6

    add-int/2addr v8, v4

    .line 201
    invoke-direct {p0, v0, v6, v4, v8}, Lcom/metamoji/mazec/ComposingText;->modifyUpper(IIII)V

    return-void

    .line 204
    :cond_f
    new-instance p4, Lcom/metamoji/mazec/StrSegment;

    invoke-virtual {p0, p1, p2, v2}, Lcom/metamoji/mazec/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p2, v2}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 206
    invoke-virtual {v1, v3, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v4

    .line 207
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_10

    .line 208
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/StrSegment;

    .line 209
    iget p4, p2, Lcom/metamoji/mazec/StrSegment;->from:I

    add-int/2addr p4, p3

    iput p4, p2, Lcom/metamoji/mazec/StrSegment;->from:I

    .line 210
    iget p4, p2, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/2addr p4, p3

    iput p4, p2, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 212
    :cond_10
    invoke-direct {p0, v0, v3, v4, v3}, Lcom/metamoji/mazec/ComposingText;->modifyUpper(IIII)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 504
    iget-object v2, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete(IZ)Z
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v0, v0, p1

    .line 392
    iget-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 395
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 396
    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/mazec/ComposingText;->deleteStrSegment(III)V

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/ComposingText;->setCursor(II)I

    return v2

    :cond_0
    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    .line 402
    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/mazec/ComposingText;->deleteStrSegment(III)V

    .line 403
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/ComposingText;->setCursor(II)I

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public deleteStrSegment(III)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x3

    .line 294
    new-array v5, v4, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    aput v7, v5, v6

    const/4 v8, 0x1

    aput v7, v5, v8

    const/4 v9, 0x2

    aput v7, v5, v9

    .line 295
    new-array v10, v4, [I

    aput v7, v10, v6

    aput v7, v10, v8

    aput v7, v10, v9

    .line 297
    iget-object v11, v0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v12, v11, v9

    .line 298
    aget-object v11, v11, v8

    if-ne v1, v9, :cond_0

    .line 301
    aput v2, v5, v9

    .line 302
    aput v3, v10, v9

    .line 303
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->from:I

    aput v1, v5, v8

    .line 304
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    aput v1, v10, v8

    .line 305
    aget v1, v5, v8

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->from:I

    aput v1, v5, v6

    .line 306
    aget v1, v10, v8

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    aput v1, v10, v6

    goto :goto_0

    :cond_0
    if-ne v1, v8, :cond_1

    .line 308
    aput v2, v5, v8

    .line 309
    aput v3, v10, v8

    .line 310
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->from:I

    aput v1, v5, v6

    .line 311
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    aput v1, v10, v6

    goto :goto_0

    .line 313
    :cond_1
    aput v2, v5, v6

    .line 314
    aput v3, v10, v6

    :goto_0
    sub-int v1, v3, v2

    add-int/2addr v1, v8

    move v2, v6

    :goto_1
    if-ge v2, v4, :cond_c

    .line 319
    aget v3, v5, v2

    if-ltz v3, :cond_2

    .line 320
    aget v9, v10, v2

    invoke-direct {v0, v2, v3, v9, v1}, Lcom/metamoji/mazec/ComposingText;->deleteStrSegment0(IIII)V

    goto/16 :goto_5

    .line 324
    :cond_2
    iget-object v3, v0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    move v9, v6

    move v11, v7

    move v12, v11

    .line 325
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_9

    .line 326
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/mazec/StrSegment;

    .line 327
    iget v14, v13, Lcom/metamoji/mazec/StrSegment;->from:I

    add-int/lit8 v15, v2, -0x1

    aget v4, v5, v15

    if-lt v14, v4, :cond_3

    iget v4, v13, Lcom/metamoji/mazec/StrSegment;->from:I

    aget v14, v10, v15

    if-le v4, v14, :cond_4

    :cond_3
    iget v4, v13, Lcom/metamoji/mazec/StrSegment;->to:I

    aget v14, v5, v15

    if-lt v4, v14, :cond_6

    iget v4, v13, Lcom/metamoji/mazec/StrSegment;->to:I

    aget v14, v10, v15

    if-gt v4, v14, :cond_6

    .line 329
    :cond_4
    aget v4, v5, v2

    if-gez v4, :cond_5

    .line 330
    aput v9, v5, v2

    .line 331
    iget v11, v13, Lcom/metamoji/mazec/StrSegment;->from:I

    .line 333
    :cond_5
    aput v9, v10, v2

    .line 334
    iget v12, v13, Lcom/metamoji/mazec/StrSegment;->to:I

    goto :goto_3

    .line 335
    :cond_6
    iget v4, v13, Lcom/metamoji/mazec/StrSegment;->from:I

    aget v14, v5, v15

    if-gt v4, v14, :cond_7

    iget v4, v13, Lcom/metamoji/mazec/StrSegment;->to:I

    aget v14, v10, v15

    if-lt v4, v14, :cond_7

    .line 336
    iget v11, v13, Lcom/metamoji/mazec/StrSegment;->from:I

    .line 337
    iget v12, v13, Lcom/metamoji/mazec/StrSegment;->to:I

    .line 338
    aput v9, v5, v2

    .line 339
    aput v9, v10, v2

    goto :goto_4

    .line 341
    :cond_7
    iget v4, v13, Lcom/metamoji/mazec/StrSegment;->from:I

    aget v13, v10, v15

    if-le v4, v13, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x3

    goto :goto_2

    :cond_9
    :goto_4
    add-int/lit8 v3, v2, -0x1

    .line 345
    aget v4, v5, v3

    if-ne v11, v4, :cond_b

    aget v4, v10, v3

    if-eq v12, v4, :cond_a

    goto :goto_6

    .line 354
    :cond_a
    aget v3, v5, v2

    aget v4, v10, v2

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/metamoji/mazec/ComposingText;->deleteStrSegment0(IIII)V

    .line 357
    :goto_5
    aget v1, v10, v2

    aget v3, v5, v2

    sub-int/2addr v1, v3

    add-int/2addr v1, v8

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    goto/16 :goto_1

    .line 346
    :cond_b
    :goto_6
    aget v4, v5, v2

    add-int/2addr v4, v8

    aget v7, v10, v2

    invoke-direct {v0, v2, v4, v7, v1}, Lcom/metamoji/mazec/ComposingText;->deleteStrSegment0(IIII)V

    sub-int/2addr v12, v1

    .line 348
    new-array v1, v8, [Lcom/metamoji/mazec/StrSegment;

    new-instance v4, Lcom/metamoji/mazec/StrSegment;

    .line 349
    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v11, v12}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v6

    .line 351
    aget v3, v5, v2

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/metamoji/mazec/ComposingText;->replaceStrSegment0(I[Lcom/metamoji/mazec/StrSegment;II)V

    :cond_c
    return-void
.end method

.method public getCursor(I)I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget p1, v0, p1

    return p1
.end method

.method public getStrSegment(II)Lcom/metamoji/mazec/StrSegment;
    .locals 2

    const/4 v0, 0x0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    if-gez p2, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    if-gez p2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/StrSegment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public insertStrSegment(IILcom/metamoji/mazec/StrSegment;)V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, v0, p1

    add-int/2addr p1, v2

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    if-gt p1, p2, :cond_1

    add-int/lit8 v1, p1, -0x1

    .line 230
    aget v0, v0, v1

    sub-int/2addr v0, v2

    .line 231
    new-instance v1, Lcom/metamoji/mazec/StrSegment;

    iget-object v3, p3, Lcom/metamoji/mazec/StrSegment;->string:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v0}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 232
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    .line 233
    iget-object v3, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v3, v1, p1

    add-int/2addr v3, v2

    aput v3, v1, p1

    .line 235
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 236
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    .line 237
    iget v4, v1, Lcom/metamoji/mazec/StrSegment;->from:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/metamoji/mazec/StrSegment;->from:I

    .line 238
    iget v4, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    aget p1, v0, p2

    add-int/lit8 p3, p1, -0x1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p2, p3, v2, v0}, Lcom/metamoji/mazec/ComposingText;->modifyUpper(IIII)V

    .line 243
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/mazec/ComposingText;->setCursor(II)I

    return-void
.end method

.method public moveCursor(II)Z
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v0, v0, p1

    add-int/2addr p2, v0

    .line 475
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/ComposingText;->setCursor(II)I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public replaceStrSegment(I[Lcom/metamoji/mazec/StrSegment;I)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v0, v0, p1

    sub-int v1, v0, p3

    add-int/lit8 v2, v0, -0x1

    .line 282
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/metamoji/mazec/ComposingText;->replaceStrSegment0(I[Lcom/metamoji/mazec/StrSegment;II)V

    .line 283
    array-length p2, p2

    add-int/2addr v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/ComposingText;->setCursor(II)I

    return-void
.end method

.method protected replaceStrSegment0(I[Lcom/metamoji/mazec/StrSegment;II)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-ltz p3, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 258
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    :cond_1
    if-ltz p4, :cond_2

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p4, v1, :cond_3

    .line 261
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    :cond_3
    move v1, p3

    :goto_0
    if-gt v1, p4, :cond_4

    .line 264
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_4
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 267
    aget-object v2, p2, v1

    invoke-virtual {v0, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 270
    :cond_5
    array-length p2, p2

    sub-int/2addr p4, p3

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/metamoji/mazec/ComposingText;->modifyUpper(IIII)V

    return-void
.end method

.method public setCursor(II)I
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 443
    iget-object p2, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    const/4 v0, 0x0

    if-gez p2, :cond_1

    move p2, v0

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 449
    iget-object p1, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aput p2, p1, v0

    .line 450
    invoke-direct {p0, v0, p2}, Lcom/metamoji/mazec/ComposingText;->included(II)I

    move-result v0

    aput v0, p1, v2

    .line 451
    iget-object p1, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v0, p1, v2

    invoke-direct {p0, v2, v0}, Lcom/metamoji/mazec/ComposingText;->included(II)I

    move-result v0

    aput v0, p1, v1

    return p2

    .line 457
    :cond_2
    iget-object v3, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    if-ne p1, v2, :cond_4

    .line 453
    invoke-direct {p0, v2, p2}, Lcom/metamoji/mazec/ComposingText;->included(II)I

    move-result p1

    aput p1, v3, v1

    .line 454
    iget-object p1, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aput p2, p1, v2

    if-lez p2, :cond_3

    .line 455
    iget-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    aput v1, p1, v0

    return p2

    .line 457
    :cond_4
    aput p2, v3, v1

    if-lez p2, :cond_5

    .line 458
    iget-object p1, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object p1, p1, v1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/StrSegment;

    iget p1, p1, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/2addr p1, v2

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    aput p1, v3, v2

    .line 459
    iget-object p1, p0, Lcom/metamoji/mazec/ComposingText;->mCursor:[I

    aget v1, p1, v2

    if-lez v1, :cond_6

    iget-object v3, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    iget v1, v1, Lcom/metamoji/mazec/StrSegment;->to:I

    add-int/2addr v1, v2

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    aput v1, p1, v0

    return p2
.end method

.method public size(I)I
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/metamoji/mazec/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(III)Ljava/lang/String;
    .locals 2

    .line 85
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/metamoji/mazec/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    :goto_0
    if-gt p2, p3, :cond_0

    .line 89
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/StrSegment;

    .line 90
    iget-object v1, v1, Lcom/metamoji/mazec/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
