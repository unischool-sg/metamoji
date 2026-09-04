.class public Lcom/metamoji/un/text/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# static fields
.field private static SYSTEM_FONT_NAME:Ljava/lang/String; = "!System Font!"

.field private static _alternativeFontName:Ljava/lang/String; = "!System Font!"

.field private static customFontTF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/core/util/Pair<",
            "Lcom/metamoji/un/text/FontId;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static fontInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/FontInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/un/text/FontUtils;->customFontTF:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTypeface(Lcom/metamoji/un/text/FontInfo;I)Landroid/graphics/Typeface;
    .locals 3

    if-eqz p0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/metamoji/un/text/FontInfo;->fontId:Lcom/metamoji/un/text/FontId;

    sget-object v1, Lcom/metamoji/un/text/FontId;->SystemFont:Lcom/metamoji/un/text/FontId;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    .line 109
    invoke-static {p0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    new-instance v0, Landroidx/core/util/Pair;

    iget-object v1, p0, Lcom/metamoji/un/text/FontInfo;->fontId:Lcom/metamoji/un/text/FontId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    sget-object v1, Lcom/metamoji/un/text/FontUtils;->customFontTF:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/metamoji/un/text/FontInfo;->normalFontFile:Ljava/io/File;

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/metamoji/un/text/FontInfo;->boldFontFile:Ljava/io/File;

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, p0

    :catch_0
    if-eqz v1, :cond_2

    .line 126
    sget-object p0, Lcom/metamoji/un/text/FontUtils;->customFontTF:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/metamoji/un/text/FontUtils;->getFontInfoFromFamilyName(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object p0

    .line 102
    invoke-static {p0, p1}, Lcom/metamoji/un/text/FontUtils;->createTypeface(Lcom/metamoji/un/text/FontInfo;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static getDispFontFamilyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/metamoji/un/text/FontUtils;->getFontInfoFromFamilyName(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/metamoji/un/text/FontInfo;->dispName:Ljava/lang/String;

    return-object p0

    .line 79
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getFontInfoFromFamilyName(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 59
    :cond_0
    invoke-static {}, Lcom/metamoji/un/text/FontUtils;->getFontInfos()Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/FontInfo;

    .line 61
    iget-object v3, v2, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public static getFontInfos()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/FontInfo;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/metamoji/un/text/FontUtils;->fontInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/metamoji/un/text/DownloadableFontManager;->getFontDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x4

    .line 34
    new-array v2, v2, [Lcom/metamoji/un/text/FontInfo;

    new-instance v3, Lcom/metamoji/un/text/FontInfo;

    sget-object v4, Lcom/metamoji/un/text/FontUtils;->SYSTEM_FONT_NAME:Ljava/lang/String;

    sget v5, Lcom/metamoji/noteanytime/R$string;->FontName_SystemFont:I

    .line 35
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/metamoji/un/text/FontId;->SystemFont:Lcom/metamoji/un/text/FontId;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/un/text/FontInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/un/text/FontId;Ljava/io/File;Ljava/io/File;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v5, Lcom/metamoji/un/text/FontInfo;

    sget v3, Lcom/metamoji/noteanytime/R$string;->FontName_SourceHanSans:I

    .line 36
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/metamoji/un/text/FontId;->SourceHanSans:Lcom/metamoji/un/text/FontId;

    new-instance v9, Ljava/io/File;

    const-string v3, "SourceHanSans-Regular.otf"

    invoke-direct {v9, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const-string v3, "SourceHanSans-Bold.otf"

    invoke-direct {v10, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "Source Han Sans"

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/un/text/FontInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/un/text/FontId;Ljava/io/File;Ljava/io/File;)V

    const/4 v3, 0x1

    aput-object v5, v2, v3

    new-instance v6, Lcom/metamoji/un/text/FontInfo;

    sget v3, Lcom/metamoji/noteanytime/R$string;->FontName_SourceHanSerif:I

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/metamoji/un/text/FontId;->SourceHanSerif:Lcom/metamoji/un/text/FontId;

    new-instance v10, Ljava/io/File;

    const-string v3, "SourceHanSerif-Regular.otf"

    invoke-direct {v10, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    const-string v3, "SourceHanSerif-Bold.otf"

    invoke-direct {v11, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "Source Han Serif"

    invoke-direct/range {v6 .. v11}, Lcom/metamoji/un/text/FontInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/un/text/FontId;Ljava/io/File;Ljava/io/File;)V

    const/4 v3, 0x2

    aput-object v6, v2, v3

    new-instance v7, Lcom/metamoji/un/text/FontInfo;

    sget v3, Lcom/metamoji/noteanytime/R$string;->FontName_UDDigiKyokashoProN:I

    .line 42
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/metamoji/un/text/FontId;->UDDigiKyokasyoProN:Lcom/metamoji/un/text/FontId;

    new-instance v11, Ljava/io/File;

    const-string v0, "UDDigiKyokashoProN-Regular.ttf"

    invoke-direct {v11, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v0, "UDDigiKyokashoProN-Bold.ttf"

    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v8, "UDDigiKyokasho ProN"

    invoke-direct/range {v7 .. v12}, Lcom/metamoji/un/text/FontInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/un/text/FontId;Ljava/io/File;Ljava/io/File;)V

    const/4 v0, 0x3

    aput-object v7, v2, v0

    .line 34
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/FontUtils;->fontInfos:Ljava/util/List;

    .line 47
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/FontUtils;->fontInfos:Ljava/util/List;

    return-object v0
.end method

.method public static getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/metamoji/un/text/FontUtils;->getFontInfoFromFamilyName(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 90
    sget-object p0, Lcom/metamoji/un/text/FontUtils;->_alternativeFontName:Ljava/lang/String;

    invoke-static {p0}, Lcom/metamoji/un/text/FontUtils;->getFontInfoFromFamilyName(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method
