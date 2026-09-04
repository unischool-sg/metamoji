.class public Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;
.super Ljava/lang/Object;
.source "TextUndoDataCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForSwitchRenderingStringWs(ZI)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 424
    const-string v1, "arrayIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string p1, "renderStrokes"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$13;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$13;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createInsertString(IILjava/lang/CharSequence;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v1, "arrayIndex"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string p0, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string p0, "aString"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance p0, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {p0}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 53
    const-class p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {p3, p0, p1}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 54
    new-instance p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    const-string p0, "StringAttrs"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$1;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$1;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createInsertStringWithStrokes(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    const-string v1, "index"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance p0, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {p0}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 151
    invoke-virtual {p1, p0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 152
    new-instance p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    const-string/jumbo p0, "strWs"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$5;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$5;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createInsertStrokes(IILjava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    const-string v1, "arrayIndex"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string p0, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance p0, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {p0}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 102
    const-class p1, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-static {p2, p0, p1}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 103
    new-instance p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    const-string/jumbo p0, "strokesArray"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance p0, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {p0}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 106
    const-class p1, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-static {p3, p0, p1}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 107
    new-instance p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    const-string/jumbo p0, "strokesAttrs"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$3;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$3;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private static createJSONAttr(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 678
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "fontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_0
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontWeight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontWeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fontWeight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_1
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 689
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUnderline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    const-string/jumbo v1, "underline"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_2
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 694
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isStrikeout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 695
    const-string/jumbo v1, "strikeout"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_3
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 699
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseColor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 700
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONColorRGB(Lcom/metamoji/un/text/model/ColorComponent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    :cond_4
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 704
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseBackgroundColor()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 705
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/Attributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONColorRGBA(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "backgroundColor"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method private static createJSONColorRGB(Lcom/metamoji/un/text/model/ColorComponent;)Ljava/lang/String;
    .locals 5

    .line 750
    iget v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 751
    iget v4, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 752
    iget p0, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 753
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x%02x%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createJSONColorRGBA(I)Ljava/lang/String;
    .locals 3

    .line 757
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x%02x%02x%02X"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createJSONStringAttr(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 720
    invoke-static {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONAttr(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v0

    .line 721
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 723
    const-string v1, "fontName"

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :cond_0
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isItalic()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 728
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "italic"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static createJSONStrokesAttr(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 740
    invoke-static {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONAttr(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static createJSONTextPosition(Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 772
    iget v1, p0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "swsaOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget p0, p0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "textOffset"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createJSONTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 763
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONTextPosition(Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "startPos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONTextPosition(Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "endPos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->isSelectedAll()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo v1, "selectedAll"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createOverwriteParagraphStyles(Lcom/metamoji/un/text/model/StringWithStrokesArray;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/StringWithStrokesArray;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    const-string/jumbo v1, "swsaIndexs"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 376
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->encodeToJSONDictionary(Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v2

    .line 377
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    const-string p0, "paragStyles"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {p2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->enumSetToInt(Ljava/util/EnumSet;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "paragOwFlag"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$11;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$11;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createOverwriteStringAttributes(IILjava/util/List;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v1, "arrayIndex"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string p0, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 198
    invoke-static {v1, p4}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONStringAttr(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v1

    .line 199
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_0
    const-string p1, "StringAttrs"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p4}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->enumSetToInt(Ljava/util/EnumSet;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "overwriteFlag"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 207
    sget-object p0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p4, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 208
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 210
    invoke-static {p2, p4}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONStringAttr(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object p2

    .line 211
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_1
    const-string p1, "StringAttrs.New"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_2
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$7;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$7;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createOverwriteStrokesAttributes(IILjava/util/List;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    const-string v1, "arrayIndex"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string p0, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 243
    invoke-static {v1, p4}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONStrokesAttr(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v1

    .line 244
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_0
    const-string/jumbo p1, "strokesAttrs"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {p4}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->enumSetToInt(Ljava/util/EnumSet;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "overwriteFlag"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 252
    sget-object p0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p4, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 253
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 255
    invoke-static {p2, p4}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONStrokesAttr(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object p2

    .line 256
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_1
    const-string/jumbo p1, "strokesAttrsNew"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_2
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$8;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$8;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createOverwriteStrokesStyle(Ljava/util/EnumSet;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "arrayIndex"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "index"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 285
    const-string/jumbo v1, "strokeStyleArray"

    if-eqz p1, :cond_0

    .line 286
    new-instance v2, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {v2}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 287
    const-class v3, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-static {p1, v2, v3}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 289
    new-instance p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {v2}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p1, v2, p2}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 290
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :goto_0
    invoke-static {p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->enumSetToInt(Ljava/util/EnumSet;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "overwriteFlag"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$9;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$9;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createRemoveString(III)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v1, "arrayIndex"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string p0, "rangeStart"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string p0, "rangeEnd"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$2;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$2;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createRemoveStringWithStrokes(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    const-string v1, "index"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$6;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$6;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createRemoveStrokes(III)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    const-string v1, "arrayIndex"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string p0, "rangeStart"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string p0, "rangeEnd"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$4;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$4;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createReplaceStrokesStyle(Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "arrayIndex"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "index"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 319
    const-string/jumbo v1, "strokeStyleArray"

    if-eqz p0, :cond_0

    .line 320
    new-instance v2, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {v2}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 321
    const-class v3, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-static {p0, v2, v3}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 323
    new-instance p0, Lcom/metamoji/cm/Blob;

    invoke-virtual {v2}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 324
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :goto_0
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$10;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$10;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createResizeUnitParams(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/GeometricProps;",
            "Lcom/metamoji/df/controller/GeometricProps;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 473
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 475
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 478
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "x.New"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "y.New"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 483
    iget v2, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "width"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 486
    iget v2, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "width.New"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "height.New"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 491
    const-string/jumbo v2, "rotation"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 493
    const-string/jumbo v2, "rotation.New"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_2
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 496
    iget-object p0, p0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 497
    const-string v1, "contentScale"

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object p0, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 499
    const-string p1, "contentScale.New"

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 502
    const-string p0, "drUndoModel"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_4
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$14;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$14;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createSetParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    const-string v1, "arrayIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance p1, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {p1}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 404
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 405
    new-instance p0, Lcom/metamoji/cm/Blob;

    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    const-string p1, "paragraphStyle"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$12;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$12;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createSetSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 562
    const-string/jumbo v1, "textRange"

    invoke-static {p0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$16;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$16;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createUnitNoDropShadow(Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 633
    const-string v1, "dataUnitNoDropShadow"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$17;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$17;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createUnitNotDelWhenEmpty(Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 650
    const-string v1, "dataUnitNotDelWhenEmpty"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$18;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$18;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static createUnitStyleParams(Lcom/metamoji/un/text/model/UnitStyles;Ljava/lang/Float;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/UnitStyles;",
            "Ljava/lang/Float;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 519
    invoke-static {p0, p1, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitStyleParams(Lcom/metamoji/un/text/model/UnitStyles;Ljava/lang/Float;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static createUnitStyleParams(Lcom/metamoji/un/text/model/UnitStyles;Ljava/lang/Float;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/UnitStyles;",
            "Ljava/lang/Float;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 525
    const-string v1, "fontName"

    iget-object v2, p0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 528
    const-string v1, "fontSize"

    iget-object v2, p0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "fontSize.New"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    if-eqz p1, :cond_2

    .line 532
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "lineSpacing"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eqz p1, :cond_3

    .line 535
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/RuledLineStyle;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "ruledLineStyle"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz p1, :cond_4

    .line 538
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/UnitBorderStyle;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "borderStyle"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 541
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONColorRGBA(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "backgroundColor"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 544
    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createJSONColorRGBA(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fontColor"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_6
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 547
    const-string/jumbo p1, "verticalWriting"

    iget-object p0, p0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_7
    const-string/jumbo p0, "shareSend"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$15;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$15;-><init>(Ljava/util/Map;)V

    return-object p0
.end method
