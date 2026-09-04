.class public Lcom/metamoji/un/text/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/DataUtil$VALUE;,
        Lcom/metamoji/un/text/DataUtil$KEY;
    }
.end annotation


# static fields
.field private static final FORMAT_COLOR_VALUE:Ljava/lang/String; = "#%02x%02x%02x"

.field private static final FORMAT_RGBA_COLOR_VALUE:Ljava/lang/String; = "rgba(%4.3f, %4.3f, %4.3f, %4.3f)"

.field private static final VALUE_RULEDLINE_STYLE_L10:Ljava/lang/String; = "line10"

.field private static final VALUE_RULEDLINE_STYLE_L11:Ljava/lang/String; = "line11"

.field private static final VALUE_RULEDLINE_STYLE_L12:Ljava/lang/String; = "line12"

.field private static final VALUE_RULEDLINE_STYLE_L13:Ljava/lang/String; = "line13"

.field private static final VALUE_RULEDLINE_STYLE_L14:Ljava/lang/String; = "line14"

.field private static final VALUE_RULEDLINE_STYLE_L15:Ljava/lang/String; = "line15"

.field private static final VALUE_RULEDLINE_STYLE_L16:Ljava/lang/String; = "line16"

.field private static final VALUE_RULEDLINE_STYLE_L17:Ljava/lang/String; = "line17"

.field private static final VALUE_RULEDLINE_STYLE_L20:Ljava/lang/String; = "line20"

.field private static final VALUE_RULEDLINE_STYLE_L22:Ljava/lang/String; = "line22"

.field private static final VALUE_RULEDLINE_STYLE_NONE:Ljava/lang/String; = "none"

.field private static final VALUE_UNIT_BORDER_STYLE_1:Ljava/lang/String; = "unitBorder1"

.field private static final VALUE_UNIT_BORDER_STYLE_2:Ljava/lang/String; = "unitBorder2"

.field private static final VALUE_UNIT_BORDER_STYLE_3:Ljava/lang/String; = "unitBorder3"

.field private static final VALUE_UNIT_BORDER_STYLE_4:Ljava/lang/String; = "unitBorder4"

.field private static final VALUE_UNIT_BORDER_STYLE_5:Ljava/lang/String; = "unitBorder5"

.field private static final VALUE_UNIT_BORDER_STYLE_6:Ljava/lang/String; = "unitBorder6"

.field private static final VALUE_UNIT_BORDER_STYLE_7:Ljava/lang/String; = "unitBorder7"

.field private static final VALUE_UNIT_BORDER_STYLE_NONE:Ljava/lang/String; = "none"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBorderStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 2

    .line 1218
    sget-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz p0, :cond_6

    .line 1220
    const-string/jumbo v1, "unitBorder1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    sget-object p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style1:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object p0

    .line 1222
    :cond_0
    const-string/jumbo v1, "unitBorder2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1223
    sget-object p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style2:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object p0

    .line 1224
    :cond_1
    const-string/jumbo v1, "unitBorder3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1225
    sget-object p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style3:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object p0

    .line 1226
    :cond_2
    const-string/jumbo v1, "unitBorder4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1227
    sget-object p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style4:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object p0

    .line 1228
    :cond_3
    const-string/jumbo v1, "unitBorder5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1229
    sget-object p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style5:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object p0

    .line 1230
    :cond_4
    const-string/jumbo v1, "unitBorder6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1231
    sget-object p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style6:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object p0

    .line 1232
    :cond_5
    const-string/jumbo v1, "unitBorder7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1233
    sget-object p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style7:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static createCSSColorStringFromMMJEdColorComponent(Lcom/metamoji/un/text/model/ColorComponent;)Ljava/lang/String;
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createCSSColorStringFromUIColor(I)Ljava/lang/String;
    .locals 2

    .line 339
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "#%02x%02x%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;
    .locals 4

    .line 351
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 352
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 353
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 354
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 350
    const-string/jumbo v0, "rgba(%4.3f, %4.3f, %4.3f, %4.3f)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createFontainPropFromDic(Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IFountainProperties;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/IFountainProperties;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 751
    new-instance v1, Lcom/metamoji/mazecclient/stroke/FountainProperties;

    const-string/jumbo v2, "trans"

    .line 752
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "bs"

    .line 753
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v6, "bsr"

    .line 754
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v8, "bsd"

    .line 755
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "br"

    .line 756
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v12, "brr"

    .line 757
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v14, "brd"

    .line 758
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v16, v1

    const-string v1, "es"

    .line 759
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-string v1, "esr"

    .line 760
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-string v1, "esd"

    .line 761
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    const-string v1, "er"

    .line 762
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-string v1, "err"

    .line 763
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    const-string v1, "erd"

    .line 764
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    const-string/jumbo v1, "ts"

    .line 765
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v29

    const-string/jumbo v1, "tsr"

    .line 766
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v31

    const-string/jumbo v1, "tsd"

    .line 767
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v33

    const-string/jumbo v1, "tr"

    .line 768
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v35

    const-string/jumbo v1, "trr"

    .line 769
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v37

    const-string/jumbo v1, "trd"

    .line 770
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide/from16 v39, v0

    move-object/from16 v0, v16

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide v13, v14

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v29

    move-wide/from16 v29, v31

    move-wide/from16 v31, v33

    move-wide/from16 v33, v35

    move-wide/from16 v35, v37

    move-wide/from16 v37, v39

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazecclient/stroke/FountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    return-object v0
.end method

.method private static createFountainPropDic(Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IFountainProperties;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 998
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1000
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTrans()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "trans"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStay()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "bs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStayRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "bsr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStayDelta()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "bsd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRun()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "br"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRunRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "brr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRunDelta()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "brd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStay()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "es"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStayRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "esr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStayDelta()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "esd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRun()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "er"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRunRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "err"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRunDelta()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "erd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStay()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStayRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "tsr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStayDelta()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "tsd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRun()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "tr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRunRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "trr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRunDelta()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string/jumbo v1, "trd"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static createMMJEdRichTextHandwriteStroke(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 881
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->encodeToStringFromPoints(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 882
    const-string v2, "m_positionsStr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createStrokeStyleDictionary(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Ljava/util/Map;

    move-result-object v1

    .line 886
    const-string v2, "m_strokeStyle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 890
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 891
    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    const-string v2, "m_bounds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v1, "g"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getSegmentAttr()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 903
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getSegmentAttr()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->encodeToHexidecimal(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 905
    const-string v2, "m_segmentAttr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getDelta()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "d"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 912
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPenAttr()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/text/DataUtil;->encodeToHexidecimal(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 914
    const-string v1, "pa"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static createMMJEdRichTextHandwriteStrokes(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 840
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 841
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 842
    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    const-string v2, "m_bounds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBaseLine()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "m_yBaseLine"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getTopLine()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "m_yTopLine"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    .line 857
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getCountOfStroke()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 861
    :goto_0
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getCountOfStroke()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 862
    invoke-interface {p0, v2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v3

    .line 863
    invoke-static {v3}, Lcom/metamoji/un/text/DataUtil;->createMMJEdRichTextHandwriteStroke(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 866
    :cond_0
    const-string p0, "m_handwriteStroke"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createMMJEdRichTextWithStrokesPartStrokeAttributesItem(Lcom/metamoji/un/text/model/attr/StrokeAttributes;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1031
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1032
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUseFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->getFontSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "font-size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUseColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUseFontWeight()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->getFontWeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "font-weight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUnderline()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1042
    const-string/jumbo v1, "underline"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isStrikeout()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1045
    const-string v1, "line-through"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUseBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1048
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "backgroundColor"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method private static createMMJHandwriteStrokeWithMMJEdRichTextHandwriteStroke(Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/HandwriteStroke;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStroke;"
        }
    .end annotation

    .line 597
    const-string v0, "m_positionsStr"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    invoke-static {v0}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->decodeToPointsFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 602
    const-string v0, "m_strokeStyle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 605
    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createStrokeStyleFromDictionary(Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v5

    .line 627
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 628
    const-string v0, "m_segmentAttr"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->decodeFromHexidecimal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 634
    :goto_0
    const-string v0, "d"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 637
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 638
    const-string v4, "pa"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 640
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/metamoji/un/text/DataUtil;->decodeFromHexidecimal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_1
    move-object v4, v1

    if-eqz v0, :cond_2

    .line 644
    new-instance v1, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;D)V

    return-object v1

    .line 646
    :cond_2
    new-instance v1, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V

    return-object v1
.end method

.method public static createParagraphNumberedListKindFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;
    .locals 2

    .line 430
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsAndPeriod:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    if-nez p0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    const-string v1, "decimal-right-parenthesis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    sget-object p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithRightParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-object p0

    .line 438
    :cond_1
    const-string v1, "decimal-parenthesis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    sget-object p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-object p0

    .line 441
    :cond_2
    const-string v1, "lower-latin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    sget-object p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->Alphabet:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-object p0

    .line 444
    :cond_3
    const-string/jumbo v1, "upper-latin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 445
    sget-object p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->AlphabetCapital:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static createParagraphNumberedListKindString(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;)Ljava/lang/String;
    .locals 1

    .line 403
    sget-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$NumberedListKind:[I

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 422
    const-string p0, "decimal-period"

    return-object p0

    .line 417
    :cond_0
    const-string/jumbo p0, "upper-latin"

    return-object p0

    .line 413
    :cond_1
    const-string p0, "lower-latin"

    return-object p0

    .line 409
    :cond_2
    const-string p0, "decimal-parenthesis"

    return-object p0

    .line 405
    :cond_3
    const-string p0, "decimal-right-parenthesis"

    return-object p0
.end method

.method public static createRuledLineStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;
    .locals 2

    .line 1146
    sget-object v0, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 1148
    const-string v1, "line10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1149
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L10:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1150
    :cond_0
    const-string v1, "line11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1151
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L11:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1152
    :cond_1
    const-string v1, "line12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1153
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L12:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1154
    :cond_2
    const-string v1, "line13"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1155
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L13:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1156
    :cond_3
    const-string v1, "line14"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1157
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L14:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1158
    :cond_4
    const-string v1, "line15"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1159
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L15:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1160
    :cond_5
    const-string v1, "line16"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1161
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L16:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1162
    :cond_6
    const-string v1, "line17"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1163
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L17:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1164
    :cond_7
    const-string v1, "line20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1165
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L20:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    .line 1166
    :cond_8
    const-string v1, "line22"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1167
    sget-object p0, Lcom/metamoji/un/text/model/RuledLineStyle;->L22:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object p0

    :cond_9
    return-object v0
.end method

.method public static createRuledLineStyleString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;
    .locals 1

    .line 1113
    sget-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 1136
    const-string p0, "none"

    return-object p0

    .line 1133
    :pswitch_0
    const-string p0, "line22"

    return-object p0

    .line 1131
    :pswitch_1
    const-string p0, "line20"

    return-object p0

    .line 1129
    :pswitch_2
    const-string p0, "line17"

    return-object p0

    .line 1127
    :pswitch_3
    const-string p0, "line16"

    return-object p0

    .line 1125
    :pswitch_4
    const-string p0, "line15"

    return-object p0

    .line 1123
    :pswitch_5
    const-string p0, "line14"

    return-object p0

    .line 1121
    :pswitch_6
    const-string p0, "line13"

    return-object p0

    .line 1119
    :pswitch_7
    const-string p0, "line12"

    return-object p0

    .line 1117
    :pswitch_8
    const-string p0, "line11"

    return-object p0

    .line 1115
    :pswitch_9
    const-string p0, "line10"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createStrokeAttributesWithMMJEdRichTextWithStrokesPartStrokeAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/StrokeAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;"
        }
    .end annotation

    .line 780
    new-instance v0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;-><init>()V

    .line 783
    const-string v1, "font-size"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 785
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setFontSize(F)V

    .line 788
    :cond_0
    const-string v1, "color"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 790
    check-cast v1, Ljava/lang/String;

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 793
    new-instance v2, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-direct {v2, v1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 797
    :cond_1
    const-string v1, "font-weight"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 799
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setFontWeight(I)V

    .line 802
    :cond_2
    const-string/jumbo v1, "underline"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 804
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 805
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setUnderline(Z)V

    .line 809
    :cond_3
    const-string v1, "line-through"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 811
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    .line 812
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setStrikeout(Z)V

    .line 816
    :cond_4
    const-string v1, "backgroundColor"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 818
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 820
    new-instance v1, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    :cond_5
    return-object v0
.end method

.method private static createStrokeStyleDictionary(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 930
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->getInt16Value()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "m_ssPenType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_1

    .line 939
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "m_ssLineColor"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    :cond_1
    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_3

    .line 946
    :cond_2
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineWidthRatio()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "m_ssLineWidth"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    :cond_3
    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_4

    .line 954
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliAngle()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "m_ssCalliAngle"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliRate()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "m_ssCalliRate"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->getInt16Value()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "m_ssCalliPaintType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_4
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 967
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getType()Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v2

    .line 968
    invoke-virtual {v2}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->getInt16Value()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const-string v4, "m_ssInkInkType"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v3, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    invoke-virtual {v2}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const-string v4, "m_ssInkColor1"

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    const-string v5, "m_ssInkColor2"

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    goto :goto_0

    .line 977
    :cond_5
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getCubic2SurfaceMainColor()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getCubic2SurfaceSubColor()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 972
    :cond_6
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getGradationStartColor()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getGradationEndColor()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 981
    :cond_7
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getColor()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_8
    :goto_0
    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_9

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 991
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/text/DataUtil;->createFountainPropDic(Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "fp"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v0
.end method

.method private static createStrokeStyleFromDictionary(Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;"
        }
    .end annotation

    .line 659
    const-string v0, "m_ssPenType"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->valueOf(S)Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    .line 664
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const/high16 v2, -0x1000000

    .line 669
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq v0, v1, :cond_0

    .line 664
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_1

    .line 669
    :cond_0
    const-string v1, "m_ssLineColor"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    move v7, v2

    .line 673
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v8, v2

    goto :goto_1

    .line 677
    :cond_3
    :goto_0
    const-string v1, "m_ssLineWidth"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move v8, v1

    .line 687
    :goto_1
    sget-object v1, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    .line 688
    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v4, :cond_4

    .line 689
    const-string v1, "m_ssCalliAngle"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 690
    const-string v1, "m_ssCalliRate"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 691
    const-string v4, "m_ssCalliPaintType"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-static {v4}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->valueOf(S)Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v4

    move v6, v1

    move v5, v2

    goto :goto_2

    :cond_4
    move-object v4, v1

    move v5, v2

    move v6, v5

    .line 701
    :goto_2
    const-string v1, "m_ssInkInkType"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_8

    .line 703
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->valueOf(S)Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v1

    .line 704
    const-string v12, "m_ssInkColor1"

    invoke-interface {p0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v3}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 705
    sget-object v13, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v1

    aget v1, v13, v1

    if-eq v1, v10, :cond_7

    const-string v13, "m_ssInkColor2"

    if-eq v1, v9, :cond_6

    if-eq v1, v2, :cond_5

    goto :goto_3

    .line 717
    :cond_5
    invoke-interface {p0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 718
    invoke-static {v12, v1}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkCubic2Surface(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    goto :goto_4

    .line 711
    :cond_6
    invoke-interface {p0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 712
    invoke-static {v12, v1}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkGradation(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    goto :goto_4

    .line 707
    :cond_7
    invoke-static {v12}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkPlain(I)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    goto :goto_4

    :cond_8
    :goto_3
    move-object v1, v11

    .line 727
    :goto_4
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v3, :cond_9

    .line 728
    const-string v3, "fp"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 730
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/metamoji/un/text/DataUtil;->createFontainPropFromDic(Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object p0

    goto :goto_5

    :cond_9
    move-object p0, v11

    .line 733
    :goto_5
    sget-object v3, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_b

    if-eq v0, v2, :cond_a

    return-object v11

    .line 741
    :cond_a
    invoke-static {v7, v8, v1, p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->fountainStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p0

    return-object p0

    :cond_b
    move-object v9, v1

    .line 738
    invoke-static/range {v4 .. v9}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->calligraphyStyle(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;FFIFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p0

    return-object p0

    :cond_c
    move-object v9, v1

    .line 735
    invoke-static {v7, v8, v9}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->standartStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p0

    return-object p0
.end method

.method public static createTextUnitBorderStyleString(Lcom/metamoji/un/text/model/UnitBorderStyle;)Ljava/lang/String;
    .locals 1

    .line 1190
    sget-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 1207
    const-string p0, "none"

    return-object p0

    .line 1204
    :pswitch_0
    const-string/jumbo p0, "unitBorder7"

    return-object p0

    .line 1202
    :pswitch_1
    const-string/jumbo p0, "unitBorder6"

    return-object p0

    .line 1200
    :pswitch_2
    const-string/jumbo p0, "unitBorder5"

    return-object p0

    .line 1198
    :pswitch_3
    const-string/jumbo p0, "unitBorder4"

    return-object p0

    .line 1196
    :pswitch_4
    const-string/jumbo p0, "unitBorder3"

    return-object p0

    .line 1194
    :pswitch_5
    const-string/jumbo p0, "unitBorder2"

    return-object p0

    .line 1192
    :pswitch_6
    const-string/jumbo p0, "unitBorder1"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createUIColorFromCSSRgbaColorString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .line 292
    const-string v0, ","

    .line 298
    :try_start_0
    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 300
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 301
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    .line 305
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 306
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    .line 310
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 311
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-int/lit8 v0, v0, 0x1

    .line 315
    const-string v4, ")"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 316
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 317
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, 0x3f800000    # 1.0f

    move p0, v1

    move v2, p0

    move v3, v2

    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    .line 325
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    mul-float/2addr v1, v0

    .line 326
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    mul-float/2addr v2, v0

    .line 327
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    mul-float/2addr v3, v0

    .line 328
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 325
    invoke-static {p0, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-static {p0, v0}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static createUIColorWithCSSColorString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    if-eqz p0, :cond_1

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x3

    .line 265
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x10

    .line 266
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x5

    .line 267
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 269
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v1, 0xff

    .line 272
    invoke-static {v1, p1, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 274
    :cond_0
    const-string/jumbo v0, "rgba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-static {p0}, Lcom/metamoji/un/text/DataUtil;->createUIColorFromCSSRgbaColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private static decodeFromHexidecimal(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 1082
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    .line 1083
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1084
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static encodeToHexidecimal(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1064
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1066
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 1067
    const-string v2, "%02x"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1069
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeHandwriteStrokesArray(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 548
    check-cast v1, Ljava/util/Map;

    .line 551
    const-string v2, "m_yBaseLine"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 552
    const-string v3, "m_yTopLine"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 554
    new-instance v4, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    invoke-direct {v4, v3, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(FF)V

    .line 556
    const-string v2, "m_handwriteStroke"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 557
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 558
    check-cast v3, Ljava/util/Map;

    .line 559
    invoke-static {v3}, Lcom/metamoji/un/text/DataUtil;->createMMJHandwriteStrokeWithMMJEdRichTextHandwriteStroke(Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    move-result-object v3

    .line 560
    invoke-virtual {v4, v3}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStroke(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)V

    goto :goto_1

    .line 563
    :cond_0
    const-string v2, "m_bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 564
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    .line 565
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v5, 0x2

    .line 566
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v6, 0x3

    .line 567
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 568
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 581
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static putStyleOfMMJEdRichTextParagraph(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 462
    sget-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$Align:[I

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getAlign()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 473
    const-string v0, "default"

    goto :goto_0

    .line 471
    :cond_0
    const-string/jumbo v0, "right"

    goto :goto_0

    .line 468
    :cond_1
    const-string v0, "center"

    goto :goto_0

    .line 465
    :cond_2
    const-string v0, "left"

    .line 477
    :goto_0
    const-string/jumbo v3, "text-align"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getLeftIndent()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v3, v0

    const-string v4, "%.1f"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getLeftIndentExcept1stLine()F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getLeftIndentExcept1stLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 484
    const-string v5, "padding-left"

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getLeftIndent()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getLeftIndentExcept1stLine()F

    move-result v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "%.1fem"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 486
    const-string/jumbo v5, "text-indent"

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getRightIndent()F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_4

    .line 489
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getRightIndent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 490
    const-string v3, "padding-right"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_4
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v3

    if-eq v0, v3, :cond_8

    .line 495
    sget-object v0, Lcom/metamoji/un/text/DataUtil$1;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$ListKind:[I

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const-string v3, "list-type"

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_1

    .line 508
    :cond_5
    const-string v0, "ol"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getNumberedListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createParagraphNumberedListKindString(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;)Ljava/lang/String;

    move-result-object v0

    .line 510
    const-string v1, "list-style-type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 498
    :cond_6
    const-string/jumbo v0, "ul"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getBulletedChar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 501
    const-string v1, "list-mark"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v0

    if-eqz v0, :cond_8

    .line 520
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    const-string v1, "list-level"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 526
    const-string/jumbo v0, "tag-id"

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getAuthorInfo()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 532
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getAuthorInfo()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->encodeToJSONDictionary(Lcom/metamoji/nt/NtAuthorInfo;)Ljava/util/Map;

    move-result-object p0

    .line 533
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 534
    const-string v0, "author-info"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method
