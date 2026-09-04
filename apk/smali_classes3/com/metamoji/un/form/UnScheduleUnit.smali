.class public Lcom/metamoji/un/form/UnScheduleUnit;
.super Lcom/metamoji/un/form/UnFormBase;
.source "UnScheduleUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;,
        Lcom/metamoji/un/form/UnScheduleUnit$ModelDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "$schedule"


# instance fields
.field m_bl_style:Lcom/metamoji/un/form/UnFormLineStyle;

.field m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;

.field m_ml_style:Lcom/metamoji/un/form/UnFormLineStyle;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/form/UnFormBase;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static calcDaysOfMonth(II)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 p0, 0x1e

    return p0

    .line 341
    :cond_1
    invoke-static {p0}, Lcom/metamoji/un/form/UnScheduleUnit;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1d

    return p0

    :cond_2
    const/16 p0, 0x1c

    return p0

    :cond_3
    :goto_0
    const/16 p0, 0x1f

    return p0
.end method

.method private static calcFirstDayOfTheWeek(II)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p0, p0, -0x1

    .line 321
    :cond_1
    div-int/lit8 v1, p0, 0x64

    .line 322
    rem-int/lit8 p0, p0, 0x64

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x1a

    .line 325
    div-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v0

    add-int/2addr p1, p0

    div-int/lit8 p0, p0, 0x4

    add-int/2addr p1, p0

    div-int/lit8 p0, v1, 0x4

    add-int/2addr p1, p0

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public static calenderType(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;
    .locals 1

    .line 44
    const-string/jumbo v0, "type"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 46
    sget-object p0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->MONTHLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object p0

    .line 47
    :cond_0
    const-string/jumbo v0, "yearly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object p0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->YEARLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object p0

    .line 49
    :cond_1
    const-string/jumbo v0, "weekly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 50
    sget-object p0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->WEEKLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object p0

    .line 52
    :cond_2
    sget-object p0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->MONTHLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object p0
.end method

.method public static collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 67
    const-string/jumbo v0, "year"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    .line 68
    const-string v2, "month"

    invoke-interface {p0, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    .line 69
    const-string/jumbo v3, "startDayOfTheWeek"

    invoke-interface {p0, v3, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    invoke-static {p0}, Lcom/metamoji/un/form/UnScheduleUnit;->calenderType(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->ordinal()I

    move-result p0

    const-string v3, "ct"

    const-string v4, "csd"

    const-string v5, "cy"

    const-string/jumbo v6, "type"

    const/4 v7, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v7, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 90
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 91
    sget-object v7, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_CALENDER_YEARLY:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v5, "csm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 75
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 76
    sget-object v8, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_CALENDER_MONTHLY:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-interface {p0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v5, "cm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/util/GregorianCalendar;

    sub-int/2addr v2, v7

    invoke-direct {v1, v0, v2, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 83
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%1$tB %1$tY"

    filled-new-array {v1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLeapYear(I)Z
    .locals 3

    .line 347
    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 350
    :cond_0
    rem-int/lit16 v0, p0, 0x190

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 352
    :cond_1
    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private static topLeftDate(III)I
    .locals 0

    .line 299
    invoke-static {p0, p1}, Lcom/metamoji/un/form/UnScheduleUnit;->calcFirstDayOfTheWeek(II)I

    move-result p0

    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x4

    const/4 p1, -0x6

    if-gt p0, p1, :cond_0

    add-int/lit8 p2, p2, 0x3

    return p2

    :cond_0
    const/4 p1, 0x2

    if-gt p1, p0, :cond_1

    add-int/lit8 p2, p2, -0xb

    return p2

    :cond_1
    return p0
.end method


# virtual methods
.method public dl_fontSize()Ljava/util/List;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dl-fontSize"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dl_textAlpha()Ljava/util/List;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dl-textAlpha"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dl_textColor()Ljava/util/List;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dl-textColor"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 123
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 124
    const-string/jumbo v0, "style"

    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "bl-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->m_bl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 130
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "gl-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 132
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "ml-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->m_ml_style:Lcom/metamoji/un/form/UnFormLineStyle;

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/form/UnFormBase;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method public lb_fillAlpha()Ljava/util/List;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-fillAlpha"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_fillColor()Ljava/util/List;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-fillColor"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_fontName()Ljava/util/List;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-fontName"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_fontSize()Ljava/util/List;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-fontSize"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-halign"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v0

    return-object v0
.end method

.method public lb_height()F
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x41200000    # 10.0f

    .line 251
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 250
    const-string v3, "lb-height"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lb_label()Ljava/util/List;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-label"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_textAlpha()Ljava/util/List;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-textAlpha"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_textColor()Ljava/util/List;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-textColor"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "lb-valign"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v0

    return-object v0
.end method

.method public ml_voffset()F
    .locals 5

    const/high16 v0, 0x41200000    # 10.0f

    .line 360
    invoke-static {v0}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "ml-voffset"

    float-to-double v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public ml_width()F
    .locals 5

    const/high16 v0, 0x41200000    # 10.0f

    .line 366
    invoke-static {v0}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "ml-width"

    float-to-double v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public month()I
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "month"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public month_fontName()Ljava/util/List;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "month-label-fontName"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public month_fontSize()Ljava/util/List;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "month-label-fontSize"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public month_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "month-label-halign"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v0

    return-object v0
.end method

.method public month_label()Ljava/util/List;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "month-label-label"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public month_textAlpha()Ljava/util/List;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "month-label-textAlpha"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public month_textColor()Ljava/util/List;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "month-label-textColor"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public month_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "month-label-valign"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v0

    return-object v0
.end method

.method public month_width()F
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/high16 v1, 0x41200000    # 10.0f

    .line 233
    invoke-static {v1}, Lcom/metamoji/df/controller/DfUtility;->pointFromMm(F)F

    move-result v1

    float-to-double v1, v1

    .line 232
    const-string v3, "month-label-width"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public startDayOfTheWeek()I
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "startDayOfTheWeek"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public type()Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    sget-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->MONTHLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object v0

    .line 269
    :cond_0
    const-string/jumbo v1, "yearly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    sget-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->YEARLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object v0

    .line 271
    :cond_1
    const-string/jumbo v1, "weekly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    sget-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->WEEKLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object v0

    .line 274
    :cond_2
    sget-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->MONTHLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object v0
.end method

.method protected updateFormSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 2

    .line 372
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnScheduleUnit;->type()Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/form/UnScheduleUnit;->updateFormSprite_Weekly(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    return-void

    .line 374
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/form/UnScheduleUnit;->updateFormSprite_Yearly(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    return-void

    .line 377
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/un/form/UnScheduleUnit;->updateFormSprite_Monthly(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    return-void
.end method

.method protected updateFormSprite_Monthly(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 31

    move-object/from16 v0, p0

    .line 390
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getContentWidth()F

    move-result v1

    .line 391
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getContentHeight()F

    move-result v2

    .line 394
    new-instance v3, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_label()Ljava/util/List;

    move-result-object v4

    .line 395
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_fontName()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_fontSize()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_textColor()Ljava/util/List;

    move-result-object v7

    .line 396
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_textAlpha()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 397
    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormTextStyle;->getCount()I

    move-result v4

    .line 398
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->year()I

    move-result v5

    .line 399
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month()I

    move-result v6

    .line 400
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->startDayOfTheWeek()I

    move-result v7

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 406
    invoke-static {v5, v6, v7}, Lcom/metamoji/un/form/UnScheduleUnit;->topLeftDate(III)I

    move-result v11

    .line 408
    invoke-static {v5, v6}, Lcom/metamoji/un/form/UnScheduleUnit;->calcDaysOfMonth(II)I

    move-result v5

    sub-int v6, v5, v11

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 411
    :goto_1
    div-int/lit8 v12, v6, 0x7

    .line 412
    rem-int/lit8 v13, v6, 0x7

    .line 414
    iget-object v14, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v14}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v14

    .line 417
    iget-object v15, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v15, v14}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 418
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_height()F

    move-result v15

    sub-float v16, v2, v15

    const/high16 v17, 0x40c00000    # 6.0f

    div-float v16, v16, v17

    int-to-float v8, v4

    div-float v8, v1, v8

    const/16 v17, 0x1

    const/4 v9, 0x0

    if-nez v10, :cond_2

    move/from16 v21, v5

    move/from16 v19, v10

    move/from16 v20, v11

    move v11, v15

    const/4 v5, 0x6

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_4

    .line 424
    invoke-virtual {v14, v9, v11}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 425
    invoke-virtual {v14, v1, v11}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v10, v10, 0x1

    add-float v11, v11, v16

    goto :goto_2

    :cond_2
    move/from16 v21, v5

    move/from16 v19, v10

    move/from16 v20, v11

    move v11, v15

    const/4 v10, 0x0

    :goto_3
    const/4 v5, 0x6

    if-ge v10, v5, :cond_4

    .line 430
    invoke-virtual {v14, v9, v11}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    if-gt v10, v12, :cond_3

    .line 432
    invoke-virtual {v14, v1, v11}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v13, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v8

    .line 434
    invoke-virtual {v14, v5, v11}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    add-float v11, v11, v16

    goto :goto_3

    :cond_4
    const/high16 v5, 0x40a00000    # 5.0f

    mul-float v5, v5, v16

    add-float/2addr v5, v15

    if-nez v19, :cond_6

    move v11, v8

    const/4 v10, 0x0

    :goto_5
    add-int/lit8 v12, v4, -0x1

    if-ge v10, v12, :cond_8

    .line 444
    invoke-virtual {v14, v11, v9}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    const/4 v12, 0x2

    if-ge v10, v12, :cond_5

    move v12, v2

    goto :goto_6

    :cond_5
    move v12, v5

    .line 445
    :goto_6
    invoke-virtual {v14, v11, v12}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v10, v10, 0x1

    add-float/2addr v11, v8

    goto :goto_5

    :cond_6
    int-to-float v5, v12

    mul-float v5, v5, v16

    add-float/2addr v5, v15

    add-int/lit8 v12, v12, 0x1

    int-to-float v10, v12

    mul-float v10, v10, v16

    add-float/2addr v10, v15

    move v12, v8

    const/4 v11, 0x0

    :goto_7
    move/from16 v22, v5

    add-int/lit8 v5, v4, -0x1

    if-ge v11, v5, :cond_8

    .line 452
    invoke-virtual {v14, v12, v9}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    if-gt v11, v13, :cond_7

    move v5, v10

    goto :goto_8

    :cond_7
    move/from16 v5, v22

    .line 453
    :goto_8
    invoke-virtual {v14, v12, v5}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v11, v11, 0x1

    add-float/2addr v12, v8

    move/from16 v5, v22

    goto :goto_7

    .line 456
    :cond_8
    invoke-virtual {v14}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 459
    iget-object v5, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_ml_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v5, v14}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 460
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->ml_voffset()F

    move-result v5

    .line 461
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->ml_width()F

    move-result v10

    move v12, v15

    const/4 v11, 0x0

    :goto_9
    const/4 v13, 0x6

    if-ge v11, v13, :cond_c

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v4, :cond_b

    if-eqz v19, :cond_9

    mul-int/lit8 v23, v11, 0x7

    move/from16 v24, v5

    add-int v5, v23, v13

    if-ge v6, v5, :cond_a

    :goto_b
    goto :goto_c

    :cond_9
    move/from16 v24, v5

    const/4 v5, 0x5

    if-ne v11, v5, :cond_a

    move/from16 v5, v17

    if-le v13, v5, :cond_a

    goto :goto_b

    :cond_a
    add-float v5, v12, v24

    .line 470
    invoke-virtual {v14, v9, v5}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    move/from16 v23, v6

    add-float v6, v9, v10

    .line 471
    invoke-virtual {v14, v6, v5}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v13, v13, 0x1

    add-float/2addr v9, v8

    move/from16 v6, v23

    move/from16 v5, v24

    const/16 v17, 0x1

    goto :goto_a

    :cond_b
    move/from16 v24, v5

    :goto_c
    move/from16 v23, v6

    add-int/lit8 v11, v11, 0x1

    add-float v12, v12, v16

    move/from16 v6, v23

    move/from16 v5, v24

    const/4 v9, 0x0

    const/16 v17, 0x1

    goto :goto_9

    :cond_c
    move/from16 v24, v5

    .line 474
    invoke-virtual {v14}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 477
    iget-object v5, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_bl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v5, v14}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    const/4 v5, 0x0

    .line 478
    invoke-virtual {v14, v5, v5, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 482
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v1

    .line 483
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v2

    move v9, v5

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v4, :cond_d

    add-int v11, v6, v7

    .line 485
    rem-int/lit8 v11, v11, 0x7

    .line 486
    invoke-virtual {v3, v14, v11}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v12

    .line 487
    invoke-virtual {v3, v14, v11}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v13

    .line 488
    invoke-static {v1, v8, v12}, Lcom/metamoji/un/form/UnScheduleUnit;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v12

    .line 489
    invoke-static {v2, v15, v13}, Lcom/metamoji/un/form/UnScheduleUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v13

    .line 490
    invoke-virtual {v3, v14, v11}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    add-float/2addr v12, v9

    .line 491
    invoke-virtual {v3, v14, v11, v12, v13}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    add-int/lit8 v6, v6, 0x1

    add-float/2addr v9, v8

    goto :goto_d

    :cond_d
    if-eqz v19, :cond_15

    .line 496
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 498
    iget-object v2, v0, Lcom/metamoji/un/form/UnScheduleUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getMarginTop()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getPaddingTop()F

    move-result v3

    add-float/2addr v2, v3

    .line 499
    iget-object v3, v0, Lcom/metamoji/un/form/UnScheduleUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getMarginLeft()F

    move-result v6

    add-float/2addr v3, v6

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getPaddingLeft()F

    move-result v6

    add-float/2addr v3, v6

    const/4 v6, 0x0

    :goto_e
    const/4 v13, 0x6

    if-ge v6, v13, :cond_14

    .line 502
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v4, :cond_f

    mul-int/lit8 v12, v6, 0x7

    add-int v12, v20, v12

    add-int/2addr v12, v11

    sub-int/2addr v12, v7

    if-ge v11, v7, :cond_e

    add-int/lit8 v12, v12, 0x7

    .line 509
    :cond_e
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 514
    :cond_f
    new-instance v25, Lcom/metamoji/un/form/UnFormTextStyle;

    .line 515
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_fontSize()Ljava/util/List;

    move-result-object v28

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_textColor()Ljava/util/List;

    move-result-object v29

    .line 516
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_textAlpha()Ljava/util/List;

    move-result-object v30

    const/16 v27, 0x0

    move-object/from16 v26, v9

    invoke-direct/range {v25 .. v30}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v9, v25

    move v12, v5

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v4, :cond_13

    mul-int/lit8 v18, v6, 0x7

    add-int v18, v18, v11

    add-int v5, v18, v20

    if-gtz v5, :cond_10

    move/from16 v23, v3

    move/from16 v19, v4

    move/from16 v13, v21

    move/from16 v21, v2

    goto/16 :goto_11

    :cond_10
    move/from16 v13, v21

    if-ge v13, v5, :cond_11

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v19, v4

    goto/16 :goto_11

    :cond_11
    add-int v5, v11, v7

    .line 525
    rem-int/lit8 v5, v5, 0x7

    .line 526
    invoke-virtual {v9, v14, v5}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v19

    .line 528
    invoke-virtual {v9, v14, v5}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v21

    .line 530
    invoke-virtual {v9, v14, v5}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    sub-float v19, v10, v19

    const/high16 v23, 0x40000000    # 2.0f

    div-float v19, v19, v23

    add-float v0, v12, v19

    sub-float v19, v24, v21

    div-float v19, v19, v23

    move/from16 v21, v2

    add-float v2, v15, v19

    .line 533
    invoke-virtual {v9, v14, v5, v0, v2}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    .line 537
    new-instance v0, Lcom/metamoji/cm/RectEx;

    add-float v2, v3, v12

    add-float v19, v21, v15

    move/from16 v23, v3

    add-float v3, v19, v24

    move/from16 v19, v4

    sub-float v4, v16, v24

    invoke-direct {v0, v2, v3, v8, v4}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->year()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->month()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04d/%02d/"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {v9, v5}, Lcom/metamoji/un/form/UnFormTextStyle;->labelText(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    add-int/lit8 v11, v11, 0x1

    add-float/2addr v12, v8

    move-object/from16 v0, p0

    move/from16 v4, v19

    move/from16 v2, v21

    move/from16 v3, v23

    const/4 v5, 0x0

    move/from16 v21, v13

    const/4 v13, 0x6

    goto/16 :goto_10

    :cond_13
    move/from16 v23, v3

    move/from16 v19, v4

    move/from16 v13, v21

    move/from16 v21, v2

    add-int/lit8 v6, v6, 0x1

    add-float v15, v15, v16

    move-object/from16 v0, p0

    const/4 v5, 0x0

    move/from16 v21, v13

    goto/16 :goto_e

    .line 548
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->formPosData()Lcom/metamoji/un/form/UnFormPositionData;

    move-result-object v0

    .line 549
    invoke-virtual {v0, v1}, Lcom/metamoji/un/form/UnFormPositionData;->setScheduleInfo(Ljava/util/HashMap;)V

    :cond_15
    return-void
.end method

.method protected updateFormSprite_Weekly(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 32

    move-object/from16 v0, p0

    .line 789
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getContentWidth()F

    move-result v1

    .line 790
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getContentHeight()F

    move-result v2

    .line 794
    new-instance v3, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_label()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_fontName()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_fontSize()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_textColor()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_textAlpha()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 795
    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormTextStyle;->getCount()I

    move-result v4

    .line 796
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->year()I

    move-result v5

    .line 798
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->weeks()I

    move-result v6

    .line 799
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->startDayOfTheWeek()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0xc

    const/4 v12, 0x7

    if-eqz v10, :cond_2

    .line 805
    invoke-static {v5, v8, v7}, Lcom/metamoji/un/form/UnScheduleUnit;->topLeftDate(III)I

    move-result v13

    sub-int/2addr v6, v8

    mul-int/2addr v6, v12

    add-int/2addr v13, v6

    move v6, v8

    :goto_1
    if-gt v6, v11, :cond_3

    .line 809
    invoke-static {v5, v6}, Lcom/metamoji/un/form/UnScheduleUnit;->calcDaysOfMonth(II)I

    move-result v14

    if-gt v13, v14, :cond_1

    goto :goto_2

    :cond_1
    sub-int/2addr v13, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    const/4 v13, 0x0

    .line 819
    :cond_3
    :goto_2
    iget-object v14, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v14}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v14

    .line 822
    iget-object v15, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v15, v14}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    int-to-float v15, v12

    div-float/2addr v2, v15

    const/4 v15, 0x0

    move v11, v15

    const/4 v9, 0x0

    :goto_3
    if-gt v9, v12, :cond_4

    .line 827
    invoke-virtual {v14, v15, v11}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 828
    invoke-virtual {v14, v1, v11}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v9, v9, 0x1

    add-float/2addr v11, v2

    goto :goto_3

    .line 831
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->ml_voffset()F

    move-result v9

    .line 832
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->ml_width()F

    move-result v11

    move/from16 v17, v12

    .line 835
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v12

    move/from16 v18, v15

    .line 836
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v15

    move/from16 v20, v9

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_5

    add-int v21, v8, v7

    move/from16 v22, v1

    .line 838
    rem-int/lit8 v1, v21, 0x7

    move/from16 v21, v8

    .line 839
    invoke-virtual {v3, v14, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v8

    move/from16 v23, v9

    .line 840
    invoke-virtual {v3, v14, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v9

    .line 841
    invoke-static {v12, v11, v8}, Lcom/metamoji/un/form/UnScheduleUnit;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v8

    move/from16 v24, v10

    sub-float v10, v2, v23

    .line 842
    invoke-static {v15, v10, v9}, Lcom/metamoji/un/form/UnScheduleUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v9

    .line 843
    invoke-virtual {v3, v14, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    add-float v9, v20, v9

    .line 844
    invoke-virtual {v3, v14, v1, v8, v9}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    add-int/lit8 v8, v21, 0x1

    add-float v20, v20, v2

    move/from16 v1, v22

    move/from16 v9, v23

    move/from16 v10, v24

    goto :goto_4

    :cond_5
    move/from16 v22, v1

    move/from16 v23, v9

    move/from16 v24, v10

    if-eqz v24, :cond_f

    .line 849
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 850
    iget-object v3, v0, Lcom/metamoji/un/form/UnScheduleUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getMarginLeft()F

    move-result v8

    add-float/2addr v3, v8

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getPaddingLeft()F

    move-result v8

    add-float/2addr v3, v8

    .line 851
    iget-object v8, v0, Lcom/metamoji/un/form/UnScheduleUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v8}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v8

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getMarginTop()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getPaddingTop()F

    move-result v9

    add-float/2addr v8, v9

    .line 854
    invoke-static {v5, v6}, Lcom/metamoji/un/form/UnScheduleUnit;->calcDaysOfMonth(II)I

    move-result v9

    .line 855
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 856
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v4, :cond_d

    add-int v20, v13, v15

    sub-int v20, v20, v7

    if-ge v15, v7, :cond_6

    add-int/lit8 v20, v20, 0x7

    :cond_6
    move/from16 v0, v20

    move/from16 v20, v3

    .line 865
    const-string v3, "%04d/%02d/%02d"

    move/from16 v21, v5

    const-string v5, "%d/%d"

    if-gtz v0, :cond_9

    move/from16 v30, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    move/from16 v31, v8

    const/16 v8, 0xc

    goto :goto_6

    :cond_7
    add-int/lit8 v19, v6, -0x1

    move/from16 v31, v8

    move/from16 v8, v19

    :goto_6
    if-ne v6, v7, :cond_8

    add-int/lit8 v19, v21, -0x1

    move/from16 v7, v19

    goto :goto_7

    :cond_8
    move/from16 v7, v21

    .line 869
    :goto_7
    invoke-static {v7, v8}, Lcom/metamoji/un/form/UnScheduleUnit;->calcDaysOfMonth(II)I

    move-result v24

    add-int v0, v0, v24

    move/from16 v24, v0

    .line 870
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v25, v7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_9
    move/from16 v30, v7

    move/from16 v31, v8

    if-ge v9, v0, :cond_c

    sub-int/2addr v0, v9

    const/16 v7, 0xc

    if-eq v6, v7, :cond_a

    add-int/lit8 v8, v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x1

    :goto_8
    if-eq v6, v7, :cond_b

    move/from16 v16, v21

    goto :goto_9

    :cond_b
    add-int/lit8 v16, v21, 0x1

    .line 877
    :goto_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 878
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 881
    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 882
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v7, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v5

    .line 884
    :goto_a
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v20

    move/from16 v5, v21

    move/from16 v7, v30

    move/from16 v8, v31

    goto/16 :goto_5

    :cond_d
    move/from16 v20, v3

    move/from16 v30, v7

    move/from16 v31, v8

    .line 890
    new-instance v24, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_fontSize()Ljava/util/List;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_textColor()Ljava/util/List;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_textAlpha()Ljava/util/List;

    move-result-object v29

    const/16 v26, 0x0

    move-object/from16 v25, v10

    invoke-direct/range {v24 .. v29}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v24

    move/from16 v3, v18

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v4, :cond_e

    add-int v7, v9, v30

    .line 894
    rem-int/lit8 v7, v7, 0x7

    .line 895
    invoke-virtual {v0, v14, v7}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v5

    .line 896
    invoke-virtual {v0, v14, v7}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v6

    .line 897
    invoke-virtual {v0, v14, v7}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    sub-float v5, v11, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    add-float v15, v18, v5

    sub-float v5, v23, v6

    div-float/2addr v5, v8

    add-float/2addr v5, v3

    .line 898
    invoke-virtual {v0, v14, v7, v15, v5}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    .line 900
    new-instance v5, Lcom/metamoji/cm/RectEx;

    add-float v6, v20, v11

    int-to-float v8, v9

    mul-float/2addr v8, v2

    add-float v8, v31, v8

    sub-float v10, v22, v11

    invoke-direct {v5, v6, v8, v10, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 901
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    add-float/2addr v3, v2

    goto :goto_b

    .line 903
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->formPosData()Lcom/metamoji/un/form/UnFormPositionData;

    move-result-object v0

    .line 904
    invoke-virtual {v0, v1}, Lcom/metamoji/un/form/UnFormPositionData;->setScheduleInfo(Ljava/util/HashMap;)V

    :cond_f
    return-void
.end method

.method protected updateFormSprite_Yearly(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 36

    move-object/from16 v0, p0

    .line 558
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getContentWidth()F

    move-result v1

    .line 559
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->getContentHeight()F

    move-result v2

    .line 566
    new-instance v3, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_label()Ljava/util/List;

    move-result-object v4

    .line 567
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_fontName()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_fontSize()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_textColor()Ljava/util/List;

    move-result-object v7

    .line 568
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_textAlpha()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 569
    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormTextStyle;->getCount()I

    move-result v4

    .line 570
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->year()I

    move-result v5

    .line 571
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month()I

    move-result v6

    .line 572
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->startDayOfTheWeek()I

    move-result v7

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 575
    :goto_0
    iget-object v11, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11

    const/16 v12, 0xc

    .line 578
    new-array v13, v12, [I

    .line 579
    new-array v14, v12, [I

    if-eqz v10, :cond_4

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v12, :cond_3

    const/16 v16, 0x1

    add-int v9, v6, v15

    if-ge v12, v9, :cond_1

    add-int/lit8 v9, v9, -0xc

    add-int/lit8 v17, v5, 0x1

    move/from16 v12, v17

    goto :goto_2

    :cond_1
    move v12, v5

    .line 589
    :goto_2
    invoke-static {v12, v9, v7}, Lcom/metamoji/un/form/UnScheduleUnit;->topLeftDate(III)I

    move-result v18

    .line 590
    invoke-static {v12, v9}, Lcom/metamoji/un/form/UnScheduleUnit;->calcDaysOfMonth(II)I

    move-result v9

    .line 591
    aput v18, v13, v15

    .line 592
    aput v9, v14, v15

    sub-int v9, v9, v18

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_2

    move v8, v9

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/16 v12, 0xc

    goto :goto_1

    :cond_3
    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x1

    const/16 v8, 0x25

    .line 602
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_height()F

    move-result v5

    .line 603
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month_width()F

    move-result v9

    .line 605
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v12

    .line 606
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v15

    move/from16 v18, v6

    const/4 v6, 0x7

    move/from16 v19, v10

    .line 607
    new-array v10, v6, [Lcom/metamoji/df/sprite/Paint;

    move-object/from16 v20, v10

    .line 608
    new-array v10, v6, [F

    .line 610
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_fillColor()Ljava/util/List;

    move-result-object v6

    move-object/from16 v22, v10

    .line 611
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->lb_fillAlpha()Ljava/util/List;

    move-result-object v10

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v13, 0x0

    :goto_4
    const/4 v14, 0x7

    const/16 v25, 0x0

    if-ge v13, v14, :cond_9

    if-eqz v10, :cond_7

    .line 615
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v26, v10

    if-eqz v14, :cond_5

    .line 616
    instance-of v10, v14, Ljava/lang/Double;

    if-eqz v10, :cond_5

    .line 617
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->floatValue()F

    move-result v10

    goto :goto_5

    :cond_5
    if-eqz v14, :cond_6

    .line 618
    instance-of v10, v14, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    .line 619
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    goto :goto_5

    :cond_6
    move/from16 v10, v25

    .line 621
    :goto_5
    aput v10, v22, v13

    cmpl-float v10, v10, v25

    if-eqz v10, :cond_8

    .line 625
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 624
    invoke-static {v10}, Lcom/metamoji/cm/WebColor;->colorWithString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 626
    new-instance v14, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v14, v10}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    aput-object v14, v20, v13

    goto :goto_6

    :cond_7
    move-object/from16 v26, v10

    :cond_8
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v26

    goto :goto_4

    :cond_9
    sub-float v6, v2, v5

    const/16 v10, 0xc

    int-to-float v13, v10

    div-float/2addr v6, v13

    sub-float v10, v1, v9

    int-to-float v13, v8

    div-float/2addr v10, v13

    move/from16 v26, v7

    move v14, v9

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v8, :cond_f

    add-int v27, v13, v26

    const/16 v21, 0x7

    .line 634
    rem-int/lit8 v7, v27, 0x7

    move/from16 v27, v4

    .line 635
    invoke-virtual {v3, v11, v7}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v4

    move/from16 v29, v9

    .line 636
    invoke-virtual {v3, v11, v7}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v9

    .line 637
    invoke-static {v12, v10, v4}, Lcom/metamoji/un/form/UnScheduleUnit;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v4

    .line 638
    invoke-static {v15, v5, v9}, Lcom/metamoji/un/form/UnScheduleUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v9

    .line 639
    invoke-virtual {v3, v11, v7}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    add-float/2addr v4, v14

    .line 640
    invoke-virtual {v3, v11, v7, v4, v9}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    .line 643
    aget v4, v22, v7

    cmpl-float v9, v4, v25

    if-eqz v9, :cond_e

    .line 646
    aget-object v7, v20, v7

    invoke-virtual {v11, v7}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 647
    invoke-virtual {v11, v4}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    move/from16 v4, v25

    .line 648
    invoke-virtual {v11, v4}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    if-eqz v19, :cond_d

    const/4 v7, 0x6

    if-gt v7, v13, :cond_a

    const/16 v7, 0x1b

    if-gt v13, v7, :cond_a

    goto :goto_9

    .line 655
    :cond_a
    invoke-virtual {v11, v14, v4, v10, v5}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    const/4 v4, 0x0

    :goto_8
    const/16 v7, 0xc

    if-ge v4, v7, :cond_c

    .line 658
    aget v7, v23, v4

    add-int/2addr v7, v13

    move/from16 v9, v16

    if-gt v9, v7, :cond_b

    .line 659
    aget v9, v24, v4

    if-gt v7, v9, :cond_b

    int-to-float v7, v4

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    .line 660
    invoke-virtual {v11, v14, v7, v10, v6}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    const/16 v16, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    goto :goto_a

    .line 652
    :cond_d
    :goto_9
    invoke-virtual {v11, v14, v4, v10, v2}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    goto :goto_a

    :cond_e
    move/from16 v4, v25

    :goto_a
    add-int/lit8 v13, v13, 0x1

    add-float/2addr v14, v10

    move/from16 v25, v4

    move/from16 v4, v27

    move/from16 v9, v29

    const/16 v16, 0x1

    goto :goto_7

    :cond_f
    move/from16 v27, v4

    move/from16 v29, v9

    move/from16 v4, v25

    .line 669
    iget-object v3, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_gl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3, v11}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    move v7, v5

    const/4 v3, 0x0

    :goto_b
    const/16 v9, 0xc

    if-ge v3, v9, :cond_10

    .line 672
    invoke-virtual {v11, v4, v7}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 673
    invoke-virtual {v11, v1, v7}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    add-float/2addr v7, v6

    goto :goto_b

    :cond_10
    if-nez v19, :cond_11

    move/from16 v7, v29

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v8, :cond_19

    .line 680
    invoke-virtual {v11, v7, v4}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 681
    invoke-virtual {v11, v7, v2}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    add-float/2addr v7, v10

    goto :goto_c

    :cond_11
    move/from16 v7, v29

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v8, :cond_14

    .line 686
    invoke-virtual {v11, v7, v4}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    if-eqz v3, :cond_13

    const/4 v4, 0x6

    if-gt v4, v3, :cond_12

    const/16 v4, 0x1c

    if-gt v3, v4, :cond_12

    goto :goto_e

    .line 690
    :cond_12
    invoke-virtual {v11, v7, v5}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    goto :goto_f

    .line 688
    :cond_13
    :goto_e
    invoke-virtual {v11, v7, v2}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    :goto_f
    add-int/lit8 v3, v3, 0x1

    add-float/2addr v7, v10

    const/4 v4, 0x0

    goto :goto_d

    :cond_14
    move v4, v5

    const/4 v3, 0x0

    :goto_10
    const/16 v7, 0xc

    if-ge v3, v7, :cond_19

    .line 696
    aget v7, v23, v3

    .line 697
    aget v9, v24, v3

    const/4 v12, 0x0

    :goto_11
    if-gt v12, v8, :cond_18

    const/4 v13, 0x5

    if-gt v13, v12, :cond_15

    const/16 v13, 0x1b

    if-gt v12, v13, :cond_16

    goto :goto_12

    :cond_15
    const/16 v13, 0x1b

    :cond_16
    add-int v14, v7, v12

    if-ltz v14, :cond_17

    if-gt v14, v9, :cond_17

    add-int/lit8 v14, v12, 0x1

    int-to-float v14, v14

    mul-float/2addr v14, v10

    add-float v14, v14, v29

    .line 706
    invoke-virtual {v11, v14, v4}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    add-float v15, v4, v6

    .line 707
    invoke-virtual {v11, v14, v15}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    :cond_17
    :goto_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_18
    const/16 v13, 0x1b

    add-int/lit8 v3, v3, 0x1

    add-float/2addr v4, v6

    goto :goto_10

    .line 712
    :cond_19
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 715
    iget-object v3, v0, Lcom/metamoji/un/form/UnScheduleUnit;->m_bl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3, v11}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    const/4 v4, 0x0

    .line 716
    invoke-virtual {v11, v4}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 717
    invoke-virtual {v11, v4, v4, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    if-eqz v19, :cond_20

    .line 722
    new-instance v30, Lcom/metamoji/un/form/UnFormTextStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month_label()Ljava/util/List;

    move-result-object v31

    .line 723
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month_fontName()Ljava/util/List;

    move-result-object v32

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month_fontSize()Ljava/util/List;

    move-result-object v33

    .line 724
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month_textColor()Ljava/util/List;

    move-result-object v34

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month_textAlpha()Ljava/util/List;

    move-result-object v35

    invoke-direct/range {v30 .. v35}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v30

    .line 725
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month_halign()Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v2

    .line 726
    invoke-virtual {v0}, Lcom/metamoji/un/form/UnScheduleUnit;->month_valign()Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v3

    const/4 v4, 0x0

    :goto_13
    const/16 v7, 0xc

    if-ge v4, v7, :cond_20

    add-int v8, v18, v4

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    .line 731
    rem-int/2addr v8, v7

    .line 732
    invoke-virtual {v1, v11, v8}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v9

    .line 733
    invoke-virtual {v1, v11, v8}, Lcom/metamoji/un/form/UnFormTextStyle;->textHeight(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v12

    .line 734
    invoke-virtual {v1, v11, v8}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    move/from16 v13, v29

    .line 735
    invoke-static {v2, v13, v9}, Lcom/metamoji/un/form/UnScheduleUnit;->boxOffsetX(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;FF)F

    move-result v9

    .line 738
    invoke-static {v3, v6, v12}, Lcom/metamoji/un/form/UnScheduleUnit;->boxOffsetY(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;FF)F

    move-result v12

    add-float/2addr v12, v5

    .line 739
    invoke-virtual {v1, v11, v8, v9, v12}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    .line 742
    aget v8, v23, v4

    .line 743
    aget v9, v24, v4

    move v14, v13

    const/4 v12, 0x0

    :goto_14
    const/4 v15, 0x6

    if-ge v12, v15, :cond_1f

    .line 746
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move/from16 v15, v27

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v15, :cond_1b

    mul-int/lit8 v19, v12, 0x7

    add-int v19, v8, v19

    add-int v19, v19, v0

    sub-int v19, v19, v26

    move-object/from16 v20, v1

    move/from16 v1, v26

    if-ge v0, v1, :cond_1a

    add-int/lit8 v19, v19, 0x7

    :cond_1a
    move/from16 v22, v0

    .line 754
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v22, 0x1

    move/from16 v26, v1

    move-object/from16 v1, v20

    goto :goto_15

    :cond_1b
    move-object/from16 v20, v1

    move/from16 v1, v26

    .line 758
    new-instance v28, Lcom/metamoji/un/form/UnFormTextStyle;

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_fontSize()Ljava/util/List;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_textColor()Ljava/util/List;

    move-result-object v32

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/form/UnScheduleUnit;->dl_textAlpha()Ljava/util/List;

    move-result-object v33

    const/16 v30, 0x0

    move-object/from16 v29, v7

    invoke-direct/range {v28 .. v33}, Lcom/metamoji/un/form/UnFormTextStyle;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v28

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v15, :cond_1e

    mul-int/lit8 v19, v12, 0x7

    add-int v19, v19, v7

    move/from16 v26, v1

    add-int v1, v19, v8

    if-gtz v1, :cond_1c

    :goto_17
    move-object/from16 v22, v2

    const/16 v21, 0x7

    goto :goto_18

    :cond_1c
    if-ge v9, v1, :cond_1d

    goto :goto_17

    :cond_1d
    add-int v1, v7, v26

    const/16 v21, 0x7

    .line 769
    rem-int/lit8 v1, v1, 0x7

    .line 770
    invoke-virtual {v0, v11, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->textWidth(Lcom/metamoji/df/sprite/Graphics;I)F

    move-result v19

    .line 774
    invoke-virtual {v0, v11, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V

    sub-float v19, v10, v19

    const/high16 v22, 0x40000000    # 2.0f

    div-float v19, v19, v22

    move-object/from16 v22, v2

    add-float v2, v14, v19

    .line 777
    invoke-virtual {v0, v11, v1, v2, v5}, Lcom/metamoji/un/form/UnFormTextStyle;->drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V

    :goto_18
    add-int/lit8 v7, v7, 0x1

    add-float/2addr v14, v10

    move-object/from16 v2, v22

    move/from16 v1, v26

    goto :goto_16

    :cond_1e
    move/from16 v26, v1

    move-object/from16 v22, v2

    const/16 v21, 0x7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v27, v15

    move-object/from16 v1, v20

    const/16 v7, 0xc

    goto/16 :goto_14

    :cond_1f
    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move/from16 v15, v27

    const/16 v21, 0x7

    add-int/lit8 v4, v4, 0x1

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    move/from16 v29, v13

    goto/16 :goto_13

    :cond_20
    return-void
.end method

.method public weeks()I
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "weeks"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public year()I
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/metamoji/un/form/UnScheduleUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "year"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
