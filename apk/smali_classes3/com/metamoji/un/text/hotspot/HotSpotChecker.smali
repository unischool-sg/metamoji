.class public Lcom/metamoji/un/text/hotspot/HotSpotChecker;
.super Ljava/lang/Object;
.source "HotSpotChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;
    }
.end annotation


# static fields
.field private static final SCHEMA_HTTP:Ljava/lang/String; = "http://"

.field private static final SCHEMA_HTTPS:Ljava/lang/String; = "https://"

.field private static final SCHEMA_HTTPS_LENGTH:I = 0x8

.field private static final SCHEMA_HTTP_LENGTH:I = 0x7

.field private static final SCHEMA_MAILTO:Ljava/lang/String; = "mailto:"

.field private static final SCHEMA_MAILTO_LENGTH:I = 0x7


# instance fields
.field private bEnableIDN:Z

.field private currentPointer:I

.field private pLast:I

.field private target:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!#\'*-=^_`{|}~.@"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CharacterSet;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->setMailCharSet(Lcom/metamoji/cm/CharacterSet;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/CharSequence;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->bEnableIDN:Z

    .line 40
    iput-object p2, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    .line 42
    iput p3, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->pLast:I

    return-void
.end method

.method private static get_counter_quote(C)C
    .locals 1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_5

    const/16 v0, 0x28

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_2

    const v0, 0xff08

    if-eq p0, v0, :cond_1

    const v0, 0xff1c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0xff1e

    return p0

    :cond_1
    const p0, 0xff09

    return p0

    :cond_2
    const/16 p0, 0x5d

    return p0

    :cond_3
    const/16 p0, 0x3e

    return p0

    :cond_4
    const/16 p0, 0x29

    :cond_5
    return p0
.end method

.method private get_mailto(Lcom/metamoji/cm/mutable/Mutable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/cm/Range;",
            ">;)Z"
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/Range;

    iget v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    iput v1, v0, Lcom/metamoji/cm/Range;->location:I

    .line 352
    iget v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isMailAddr(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 360
    iget-object v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isMailAddr(C)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    iput v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    .line 370
    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/Range;

    iget p1, p1, Lcom/metamoji/cm/Range;->location:I

    sub-int/2addr v0, p1

    iput v0, v1, Lcom/metamoji/cm/Range;->length:I

    const/4 p1, 0x1

    return p1
.end method

.method private get_url(ICZLcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ICZ",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/cm/Range;",
            ">;",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/cm/Range;",
            ">;)Z"
        }
    .end annotation

    .line 123
    invoke-virtual {p4}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/Range;

    iget v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    iput v1, v0, Lcom/metamoji/cm/Range;->location:I

    .line 125
    iget v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    const/4 p1, 0x0

    move v1, p1

    move v2, v1

    .line 131
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v0, :cond_a

    .line 133
    iget-object v3, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p2, :cond_0

    .line 138
    invoke-virtual {p5}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/cm/Range;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p5}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/metamoji/cm/Range;

    iget p5, p5, Lcom/metamoji/cm/Range;->location:I

    sub-int/2addr v1, p5

    iput v1, p3, Lcom/metamoji/cm/Range;->length:I

    goto/16 :goto_4

    :cond_0
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_5

    .line 145
    invoke-static {v3}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isMailAddr(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isURL(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 148
    invoke-static {v3}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isDelimiterOrURL(C)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v0

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    if-nez v1, :cond_8

    if-eqz v2, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_a

    goto :goto_3

    :cond_4
    :goto_1
    move v2, p1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 186
    iget-boolean v4, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->bEnableIDN:Z

    if-eqz v4, :cond_6

    invoke-static {v3}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isSpaceZ(C)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    if-eqz p2, :cond_9

    .line 189
    iget-boolean v3, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->bEnableIDN:Z

    if-eqz v3, :cond_9

    if-nez v1, :cond_4

    if-eqz v2, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v0

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    :goto_3
    move p1, v1

    move v0, v2

    goto :goto_4

    :cond_a
    move p1, v1

    :goto_4
    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move p1, v0

    .line 215
    :goto_5
    iput p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    if-eqz p2, :cond_d

    :goto_6
    add-int/lit8 p2, p1, -0x1

    .line 219
    invoke-virtual {p4}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/cm/Range;

    iget p3, p3, Lcom/metamoji/cm/Range;->location:I

    if-le p2, p3, :cond_d

    .line 221
    iget-object p3, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isSpace(C)Z

    move-result p3

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isSpaceZ(C)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 226
    :cond_d
    :goto_7
    invoke-virtual {p4}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cm/Range;

    invoke-virtual {p4}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/cm/Range;

    iget p3, p3, Lcom/metamoji/cm/Range;->location:I

    sub-int/2addr p1, p3

    iput p1, p2, Lcom/metamoji/cm/Range;->length:I

    const/4 p1, 0x1

    return p1
.end method

.method private static is_url_schema(Ljava/lang/CharSequence;Lcom/metamoji/cm/mutable/MutableBoolean;)I
    .locals 8

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    .line 59
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x48

    if-eq v1, v2, :cond_0

    const/16 v2, 0x68

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    const-string v5, "http://"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/metamoji/cm/StringUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    move-object v1, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    const-string v4, "https://"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cm/StringUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getNext(Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/cm/Range;",
            ">;",
            "Lcom/metamoji/cm/mutable/Mutable<",
            "Lcom/metamoji/cm/Range;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 392
    new-instance v1, Lcom/metamoji/cm/Range;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6}, Lcom/metamoji/cm/Range;-><init>(II)V

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 393
    new-instance v1, Lcom/metamoji/cm/Range;

    invoke-direct {v1, v6, v6}, Lcom/metamoji/cm/Range;-><init>(II)V

    move-object/from16 v5, p2

    invoke-virtual {v5, v1}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 395
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    if-le v1, v2, :cond_10

    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->pLast:I

    if-lt v1, v2, :cond_0

    goto/16 :goto_5

    .line 398
    :cond_0
    sget-object v1, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->NONE:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    .line 403
    new-instance v7, Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-direct {v7}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>()V

    move-object v8, v1

    move v9, v6

    .line 404
    :goto_0
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    if-le v1, v2, :cond_10

    .line 435
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->is_url_schema(Ljava/lang/CharSequence;Lcom/metamoji/cm/mutable/MutableBoolean;)I

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    .line 438
    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    if-lez v2, :cond_1

    .line 440
    iget-object v3, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->get_counter_quote(C)C

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    invoke-virtual {v5}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/Range;

    iget v11, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    sub-int/2addr v11, v10

    iput v11, v3, Lcom/metamoji/cm/Range;->location:I

    goto :goto_1

    :cond_1
    move v2, v6

    .line 445
    :cond_2
    :goto_1
    invoke-virtual {v7}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->get_url(ICZLcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v10

    .line 451
    :cond_3
    iget-object v11, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    iget v13, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    const/4 v15, 0x0

    const/16 v16, 0x7

    const/4 v12, 0x1

    const-string v14, "mailto:"

    invoke-static/range {v11 .. v16}, Lcom/metamoji/cm/StringUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 454
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->get_mailto(Lcom/metamoji/cm/mutable/Mutable;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v10

    :cond_4
    :goto_2
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    goto :goto_0

    .line 463
    :cond_5
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/hotspot/CodeTypeUtil;->isMailAddr(C)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 465
    invoke-virtual {v8}, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    if-eqz v1, :cond_b

    if-eq v1, v10, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    goto/16 :goto_4

    .line 493
    :cond_6
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    iget v3, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_7

    iget v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->pLast:I

    if-ge v1, v2, :cond_7

    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    .line 495
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v10

    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    if-ne v1, v2, :cond_f

    .line 497
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    iput v9, v1, Lcom/metamoji/cm/Range;->location:I

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    sub-int/2addr v2, v9

    add-int/2addr v2, v10

    iput v2, v1, Lcom/metamoji/cm/Range;->length:I

    return v10

    .line 481
    :cond_8
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    iget v3, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_9

    .line 484
    sget-object v8, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->NONE:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    goto :goto_3

    .line 489
    :cond_9
    sget-object v8, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->DOMAIN:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    goto :goto_4

    .line 475
    :cond_a
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    iget v3, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_f

    .line 477
    sget-object v8, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->ATMARK:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    goto :goto_4

    .line 468
    :cond_b
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->target:Ljava/lang/CharSequence;

    iget v3, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_f

    .line 470
    sget-object v8, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->LOCAL:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    .line 471
    iget v9, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    goto :goto_4

    .line 507
    :cond_c
    sget-object v1, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->DOMAIN:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    if-ne v8, v1, :cond_d

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    iput v9, v1, Lcom/metamoji/cm/Range;->location:I

    .line 511
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    sub-int/2addr v2, v9

    iput v2, v1, Lcom/metamoji/cm/Range;->length:I

    return v10

    .line 514
    :cond_d
    sget-object v1, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->NONE:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    .line 516
    iget v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    iget v3, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->pLast:I

    if-lt v2, v3, :cond_e

    return v6

    :cond_e
    move-object v8, v1

    :goto_3
    move v9, v6

    .line 521
    :cond_f
    :goto_4
    iget v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->currentPointer:I

    goto/16 :goto_2

    :cond_10
    :goto_5
    return v6
.end method
