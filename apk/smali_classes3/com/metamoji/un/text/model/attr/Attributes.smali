.class public Lcom/metamoji/un/text/model/attr/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;
    }
.end annotation


# static fields
.field public static final FONTBOLD_BOLD:I = 0x2bc

.field public static final FONTBOLD_HEAVIEST:I = 0x384

.field public static final FONTBOLD_LIGHT:I = 0xc8

.field public static final FONTBOLD_LIGHTEST:I = 0x64

.field public static final FONTBOLD_NORMAL:I = 0x190

.field public static final FONTBOLD_SEMIBOLD:I = 0x258


# instance fields
.field protected _backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

.field protected _useBackgroundColor:Z

.field protected color:Lcom/metamoji/un/text/model/ColorComponent;

.field protected fontSize:F

.field protected fontWeight:I

.field protected strikeout:Z

.field protected underline:Z

.field protected useColor:Z

.field protected useFontSize:Z

.field protected useFontWeight:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    .line 106
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    const/16 v2, 0x190

    .line 107
    iput v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    .line 108
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    .line 109
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    .line 110
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    .line 111
    new-instance v2, Lcom/metamoji/un/text/model/ColorComponent;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v1, v1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(FFFF)V

    iput-object v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    .line 112
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    .line 113
    new-instance v0, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(FFFF)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/attr/Attributes;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    .line 123
    iget v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    iput v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    .line 124
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    .line 125
    iget v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    iput v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    .line 126
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    .line 127
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    .line 128
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    .line 129
    iget-object v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    iput-object v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    .line 130
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    .line 131
    iget-object p1, p1, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    iput-object p1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/un/text/model/attr/Attributes;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation

    .line 330
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/attr/Attributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation

    .line 341
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 342
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    iget-boolean v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    if-ne v1, v2, :cond_1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    iget v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 345
    :cond_0
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_1
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    iget-boolean v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    if-ne v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    iget v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    if-ne v1, v2, :cond_3

    .line 350
    :cond_2
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_3
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    iget-boolean v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    if-ne v1, v2, :cond_4

    .line 354
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_4
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    iget-boolean v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    if-ne v1, v2, :cond_5

    .line 357
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_5
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    iget-boolean v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    if-ne v1, v2, :cond_7

    if-eqz v1, :cond_6

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    iget-object v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    .line 360
    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/ColorComponent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 361
    :cond_6
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_7
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    iget-boolean v1, p1, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    if-ne p2, v1, :cond_9

    if-eqz p2, :cond_8

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    iget-object p1, p1, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    .line 365
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/ColorComponent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 366
    :cond_8
    sget-object p1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 290
    :cond_1
    instance-of v2, p1, Lcom/metamoji/un/text/model/attr/Attributes;

    if-nez v2, :cond_2

    return v1

    .line 293
    :cond_2
    check-cast p1, Lcom/metamoji/un/text/model/attr/Attributes;

    .line 295
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    if-ne v2, v3, :cond_7

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    iget v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7

    :cond_3
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    if-ne v2, v3, :cond_7

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    iget v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    if-ne v2, v3, :cond_7

    :cond_4
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    if-ne v2, v3, :cond_7

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    iget-object v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    .line 303
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/ColorComponent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    if-ne v2, v3, :cond_7

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    iget-object p1, p1, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    .line 305
    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/ColorComponent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    return v0

    :cond_7
    return v1
.end method

.method public getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    return-object v0
.end method

.method public getColor()Lcom/metamoji/un/text/model/ColorComponent;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    return v0
.end method

.method public getFontWeight()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    return v0
.end method

.method public isBold()Z
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStrikeout()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    return v0
.end method

.method public isUnderline()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    return v0
.end method

.method public isUseBackgroundColor()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    return v0
.end method

.method public isUseColor()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    return v0
.end method

.method public isUseFontSize()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    return v0
.end method

.method public isUseFontWeight()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    return v0
.end method

.method protected overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Lcom/metamoji/un/text/model/attr/Attributes;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 383
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    .line 385
    iget v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    iput v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    .line 388
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    .line 390
    iget v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    iput v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    .line 393
    :cond_1
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    .line 396
    :cond_2
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    .line 399
    :cond_3
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 400
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    .line 401
    iget-object v0, p1, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    iput-object v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    .line 404
    :cond_4
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 405
    iget-boolean p2, p1, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    iput-boolean p2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    .line 406
    iget-object p1, p1, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    iput-object p1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    :cond_5
    return-object p0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 2

    .line 194
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    invoke-static {v0}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v0

    .line 197
    iget v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontWeight()Z

    move-result v1

    invoke-static {v1}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    iget v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    invoke-static {v1}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    invoke-static {v1}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    invoke-static {v1}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    iget-object v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/ColorComponent;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontSize:Z

    .line 210
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontSize:F

    .line 212
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useFontWeight:Z

    .line 213
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->fontWeight:I

    .line 215
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->underline:Z

    .line 216
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->strikeout:Z

    .line 218
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->useColor:Z

    .line 219
    iget-object v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/ColorComponent;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    const/4 p1, 0x0

    return p1
.end method

.method public serializeNewVerData(Lcom/metamoji/cm/DataArchiver;)I
    .locals 3

    .line 232
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 237
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    invoke-static {v0}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/ColorComponent;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 243
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v0

    .line 249
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 251
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v1

    .line 253
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v2

    invoke-static {v2}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_useBackgroundColor:Z

    .line 254
    iget-object v2, p0, Lcom/metamoji/un/text/model/attr/Attributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/ColorComponent;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    add-int/2addr v1, v0

    .line 257
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateDrawState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseColor()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isStrikeout()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 417
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUnderline()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 420
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_2
    return-void
.end method
