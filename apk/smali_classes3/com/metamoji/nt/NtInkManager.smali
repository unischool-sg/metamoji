.class public Lcom/metamoji/nt/NtInkManager;
.super Ljava/lang/Object;
.source "NtInkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtInkManager$GradationTable;,
        Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final GROUP_NAME_FILL_COLORPALETTE_GRADATION:I = 0x0

.field public static final GROUP_NAME_FILL_COLORWHEEL_GRADATION:I = 0x2

.field public static final GROUP_NAME_FILL_COLORWHEEL_STANDARD:I = 0x1

.field public static final GROUP_NAME_FILL_MAX:I = 0x3

.field public static final GROUP_NAME_GRADATION:I = 0x2

.field public static final GROUP_NAME_INKSET:I = 0x1

.field public static final GROUP_NAME_INVALID:I = -0x1

.field public static final GROUP_NAME_LINE_COLORPALETTE_CHANGESTYLE:I = 0x1

.field public static final GROUP_NAME_LINE_COLORPALETTE_STANDARD:I = 0x0

.field public static final GROUP_NAME_LINE_COLORWHEEL_STANDARD:I = 0x2

.field public static final GROUP_NAME_LINE_MAX:I = 0x3

.field public static final GROUP_NAME_PEN_COLORPALETTE_GRADATION:I = 0x1

.field public static final GROUP_NAME_PEN_COLORPALETTE_MARKER:I = 0x2

.field public static final GROUP_NAME_PEN_COLORPALETTE_STANDARD:I = 0x0

.field public static final GROUP_NAME_PEN_COLORWHEEL_GRADATION:I = 0x4

.field public static final GROUP_NAME_PEN_COLORWHEEL_STANDARD:I = 0x3

.field public static final GROUP_NAME_PEN_MAX:I = 0x5

.field public static final GROUP_NAME_STANDARD:I = 0x0

.field public static final GROUP_NAME_STD_COLORPALETTE_STANDARD:I = 0x0

.field public static final GROUP_NAME_STD_COLORWHEEL_STANDARD:I = 0x1

.field public static final GROUP_NAME_STD_MAX:I = 0x2

.field private static final MMJNT_WHITE_THRESHOLD:I = 0xf8

.field public static final TYPE_GRADATION:I = 0x1

.field public static final TYPE_HISTORY_BACKGROUND:I = 0x5

.field public static final TYPE_HISTORY_FILL:I = 0x6

.field public static final TYPE_HISTORY_GRADATION:I = 0x4

.field public static final TYPE_HISTORY_STANDARD:I = 0x3

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_MARKER:I = 0x2

.field public static final TYPE_STANDARD:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundColorArray()[I
    .locals 13

    const/16 v0, 0xfe

    const/16 v1, 0x99

    const/16 v2, 0xff

    .line 145
    invoke-static {v2, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/16 v0, 0xcd

    const/16 v1, 0xee

    .line 146
    invoke-static {v2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/16 v0, 0xcc

    const/16 v1, 0x9a

    .line 147
    invoke-static {v2, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v0, 0xdd

    const/16 v6, 0xd4

    .line 148
    invoke-static {v2, v2, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 149
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/16 v8, 0xfd

    const/16 v9, 0x4f

    .line 150
    invoke-static {v2, v2, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v9, 0x8c

    const/16 v10, 0xe0

    .line 151
    invoke-static {v2, v9, v10, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    const/16 v10, 0xce

    const/16 v11, 0x3a

    .line 152
    invoke-static {v2, v10, v2, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    const/16 v11, 0x97

    .line 153
    invoke-static {v2, v2, v11, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    const/16 v6, 0xd2

    .line 154
    invoke-static {v2, v6, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    move v6, v0

    filled-new-array/range {v3 .. v12}, [I

    move-result-object v0

    return-object v0
.end method

.method public static backgroundHistoryColorArray()[I
    .locals 1

    .line 183
    const-string v0, "TextBackgroundColorHistory"

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->historyColorArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->historyStandardColorArray(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getColorGroupId(I)Ljava/lang/String;
    .locals 0

    .line 327
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorTypeId(I)Ljava/lang/String;
    .locals 0

    .line 351
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGroupNameNumber(Ljava/lang/String;)I
    .locals 0

    .line 336
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->safeParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 338
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getInkId(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 369
    :cond_0
    const-string p0, "com.metamoji.ink.gradation"

    return-object p0

    .line 367
    :cond_1
    const-string p0, "com.metamoji.ink.builtin.standard2"

    return-object p0

    .line 365
    :cond_2
    const-string p0, "com.metamoji.ink.builtin.standard1"

    return-object p0
.end method

.method public static getInkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 384
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemInkSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemInkSettings;

    .line 385
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtInkTemplate;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInkTemplate;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gradationColorArray()Lcom/metamoji/nt/NtInkManager$GradationTable;
    .locals 16

    .line 110
    new-instance v0, Lcom/metamoji/nt/NtInkManager$GradationTable;

    invoke-direct {v0}, Lcom/metamoji/nt/NtInkManager$GradationTable;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0xcc

    const/4 v3, 0x0

    .line 112
    invoke-static {v1, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/16 v5, 0x80

    const/16 v14, 0xe6

    .line 113
    invoke-static {v1, v5, v14, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v6, 0x99

    .line 114
    invoke-static {v1, v1, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/16 v15, 0x33

    const/16 v7, 0xdd

    const/16 v8, 0xee

    move v9, v7

    .line 115
    invoke-static {v1, v15, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 116
    invoke-static {v1, v2, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move v10, v9

    .line 117
    invoke-static {v1, v3, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    const/16 v11, 0x91

    .line 118
    invoke-static {v1, v3, v8, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v11, 0xc4

    .line 119
    invoke-static {v1, v10, v11, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    .line 120
    invoke-static {v1, v1, v10, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    .line 121
    invoke-static {v1, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    move v10, v8

    move v8, v2

    filled-new-array/range {v4 .. v13}, [I

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/nt/NtInkManager$GradationTable;->colors0:[I

    .line 124
    invoke-static {v1, v1, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 125
    invoke-static {v1, v1, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v2, 0x88

    .line 126
    invoke-static {v1, v2, v3, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/16 v2, 0xbb

    .line 127
    invoke-static {v1, v1, v15, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/16 v2, 0x77

    .line 128
    invoke-static {v1, v3, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v9, 0x55

    move v10, v9

    .line 129
    invoke-static {v1, v15, v10, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 130
    invoke-static {v1, v10, v10, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    const/16 v11, 0x44

    .line 131
    invoke-static {v1, v11, v15, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    const/16 v12, 0x4d

    .line 132
    invoke-static {v1, v2, v12, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    .line 133
    invoke-static {v1, v15, v15, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    filled-new-array/range {v4 .. v13}, [I

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtInkManager$GradationTable;->colors1:[I

    return-object v0
.end method

.method public static gradationFillHistoryColorArray()Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;
    .locals 1

    .line 193
    const-string v0, "ShapeFillColorHistory"

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->gradationHistoryColorArray(Ljava/lang/String;)Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;

    move-result-object v0

    return-object v0
.end method

.method public static gradationHistoryColorArray()Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;
    .locals 1

    .line 174
    const-string v0, "SetPenColorHistoryGradation"

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->gradationHistoryColorArray(Ljava/lang/String;)Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;

    move-result-object v0

    return-object v0
.end method

.method public static gradationHistoryColorArray(Ljava/lang/String;)Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;
    .locals 7

    .line 222
    invoke-static {p0}, Lcom/metamoji/nt/NtInkManager;->historyColorArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_0
    new-instance v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;

    invoke-direct {v0}, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;-><init>()V

    .line 227
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors0:[I

    .line 228
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors1:[I

    .line 229
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    const/4 v1, 0x0

    move v2, v1

    .line 231
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 232
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 233
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 237
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 238
    iget-object v4, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors0:[I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    .line 239
    iget-object v4, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors1:[I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v2

    .line 240
    iget-object v3, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    aput v1, v3, v2

    goto :goto_1

    .line 243
    :cond_2
    iget-object v4, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors0:[I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 244
    iget-object v4, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors1:[I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v2

    .line 245
    iget-object v3, v0, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    aput v5, v3, v2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static historyColorArray(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static historyStandardColorArray(Ljava/util/List;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)[I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 204
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 205
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 206
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static isWhiteColor(I)Z
    .locals 4

    .line 298
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 299
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 300
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 301
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/16 v3, 0xf8

    if-lt v0, v3, :cond_0

    if-lt v1, v3, :cond_0

    if-lt v2, v3, :cond_0

    if-lt p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static markerColorArray()[I
    .locals 13

    .line 91
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->markerTopColor()I

    move-result v0

    const/16 v1, 0xcc

    const/16 v2, 0xff

    const/16 v3, 0x33

    move v4, v1

    .line 92
    invoke-static {v4, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/16 v5, 0x99

    move v6, v2

    .line 93
    invoke-static {v4, v6, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/16 v7, 0x66

    move v8, v3

    .line 94
    invoke-static {v4, v6, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 95
    invoke-static {v4, v6, v5, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v9, 0x0

    move v10, v4

    move v4, v5

    .line 96
    invoke-static {v10, v9, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    move v11, v6

    .line 97
    invoke-static {v10, v7, v11, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 98
    invoke-static {v10, v11, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v12, v7

    move v7, v8

    .line 99
    invoke-static {v10, v11, v11, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 100
    invoke-static {v10, v11, v12, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    filled-new-array/range {v0 .. v9}, [I

    move-result-object v0

    return-object v0
.end method

.method public static markerTopColor()I
    .locals 3

    const/16 v0, 0x66

    const/16 v1, 0xff

    const/16 v2, 0xcc

    .line 81
    invoke-static {v2, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static penPreviewBackgroundId(I)I
    .locals 0

    .line 261
    invoke-static {p0}, Lcom/metamoji/nt/NtInkManager;->isWhiteColor(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 263
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundIdForWhiteColor()I

    move-result p0

    return p0

    .line 266
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hoverselector_pen_preview_frame:I

    return p0
.end method

.method public static penPreviewBackgroundId(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 273
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 275
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundId(I)I

    move-result p0

    return p0

    .line 277
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 279
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/nt/NtInkManager;->isWhiteColor(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/nt/NtInkManager;->isWhiteColor(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 281
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundIdForWhiteColor()I

    move-result p0

    return p0

    .line 284
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hoverselector_pen_preview_frame:I

    return p0

    .line 287
    :cond_2
    invoke-static {p0}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundId(I)I

    move-result p0

    return p0
.end method

.method public static penPreviewBackgroundIdForWhiteColor()I
    .locals 1

    .line 293
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->hoverselector_pen_preview_frame_gray:I

    return v0
.end method

.method public static saveColorHistory(Lcom/metamoji/ui/common/UiColorSelectionView2;ZZZ)V
    .locals 7

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x3

    .line 429
    const-string v4, "SetPenColorHistoryStandard"

    const-string v5, "ShapeFillColorHistory"

    const-string v6, "SetPenColorHistoryGradation"

    if-eqz p1, :cond_8

    .line 430
    invoke-static {v3}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 432
    invoke-static {v0, v4}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 433
    invoke-static {v0, v6}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 434
    invoke-static {v0, v5}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 p1, 0x4

    .line 436
    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 438
    invoke-static {v0, v6}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 439
    invoke-static {v0, v5}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 440
    :cond_4
    invoke-static {v2}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 442
    invoke-static {v0, v4}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 443
    invoke-static {v0, v6}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 444
    invoke-static {v0, v5}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 447
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedSet()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    goto/16 :goto_1

    .line 451
    :cond_6
    invoke-static {v3}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 452
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedIndex()I

    move-result p0

    invoke-static {v0, v4, p0}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;I)V

    .line 453
    invoke-static {v0, v5}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 454
    invoke-static {v0, v6}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 456
    :cond_7
    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 457
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedIndex()I

    move-result p0

    invoke-static {v0, v6, p0}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;I)V

    .line 458
    invoke-static {v0, v5}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 459
    invoke-static {v0, v4}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 p1, 0x1

    if-eqz p3, :cond_c

    .line 464
    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 465
    invoke-static {v2}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_0

    .line 474
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedSet()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto/16 :goto_1

    :cond_a
    const/4 p2, 0x6

    .line 478
    invoke-static {p2}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 479
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedIndex()I

    move-result p0

    invoke-static {v0, v5, p0}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;I)V

    .line 480
    invoke-static {v0, v6}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 481
    invoke-static {v0, v4}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 467
    :cond_b
    :goto_0
    invoke-static {v0, v5}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 468
    invoke-static {v0, v6}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 469
    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 470
    invoke-static {v0, v4}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 486
    :cond_c
    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "TextBackgroundColorHistory"

    if-eqz p1, :cond_e

    if-eqz p2, :cond_d

    .line 489
    invoke-static {v0, p3}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 492
    :cond_d
    invoke-static {v0, v4}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 493
    invoke-static {v0, v6}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 494
    invoke-static {v0, v5}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 498
    :cond_e
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedSet()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_1

    .line 502
    :cond_f
    invoke-static {v3}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 503
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedIndex()I

    move-result p0

    invoke-static {v0, v4, p0}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;I)V

    .line 504
    invoke-static {v0, v6}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;)V

    .line 505
    invoke-static {v0, v5}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 p2, 0x5

    .line 507
    invoke-static {p2}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 508
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedIndex()I

    move-result p0

    invoke-static {v0, p3, p0}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;I)V

    :cond_11
    :goto_1
    return-void
.end method

.method public static saveColorHistory(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 522
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 523
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 528
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 530
    invoke-static {p0, p1, v2}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 536
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v2, 0x0

    .line 538
    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 539
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/16 v2, 0x32

    if-le p0, v2, :cond_2

    .line 541
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 543
    :cond_2
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static saveColorHistoryBackground(Lcom/metamoji/ui/common/UiColorSelectionView2;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 405
    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Lcom/metamoji/ui/common/UiColorSelectionView2;ZZZ)V

    return-void
.end method

.method public static saveColorHistoryFill(Lcom/metamoji/ui/common/UiColorSelectionView2;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 409
    invoke-static {p0, v0, v0, v1}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Lcom/metamoji/ui/common/UiColorSelectionView2;ZZZ)V

    return-void
.end method

.method public static saveColorHistoryPen(Lcom/metamoji/ui/common/UiColorSelectionView2;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 397
    invoke-static {p0, v0, v1, v1}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Lcom/metamoji/ui/common/UiColorSelectionView2;ZZZ)V

    return-void
.end method

.method public static saveColorHistoryStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-static {p0, v0, v0, v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Lcom/metamoji/ui/common/UiColorSelectionView2;ZZZ)V

    return-void
.end method

.method private static sortColorHistory(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 553
    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtInkManager;->sortColorHistory(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method private static sortColorHistory(Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 558
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 559
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    if-gez p2, :cond_0

    .line 565
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    :cond_0
    if-lez p2, :cond_1

    .line 567
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 569
    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 570
    invoke-interface {v1, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 571
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static standardColorArray()[I
    .locals 12

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/16 v3, 0xfb

    move v4, v3

    .line 67
    invoke-static {v0, v4, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    move v5, v4

    .line 68
    invoke-static {v0, v1, v1, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/16 v6, 0xa7

    move v7, v5

    .line 69
    invoke-static {v0, v1, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v8, 0x85

    .line 70
    invoke-static {v0, v7, v8, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v9, 0x96

    .line 71
    invoke-static {v0, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    move v10, v6

    move v6, v8

    .line 72
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v11, 0x65

    .line 73
    invoke-static {v0, v7, v11, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    .line 74
    invoke-static {v0, v1, v10, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    const/16 v1, 0xf0

    const/16 v7, 0x44

    .line 75
    invoke-static {v0, v0, v1, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    move v7, v9

    move v9, v11

    move v11, v0

    filled-new-array/range {v2 .. v11}, [I

    move-result-object v0

    return-object v0
.end method

.method public static standardHistoryColorArray()[I
    .locals 1

    .line 164
    const-string v0, "SetPenColorHistoryStandard"

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->historyColorArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->historyStandardColorArray(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method
