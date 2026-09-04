.class public Lcom/metamoji/mazec/MazecPreferences;
.super Ljava/lang/Object;
.source "MazecPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/MazecPreferences$Transactional;
    }
.end annotation


# static fields
.field public static final CONVERSION_MODE_DEFAULT:I = 0x0

.field public static final CONVERSION_MODE_ONLY_RECOGNIZED:I = 0x1

.field private static final FLAG_DIRTY_ALL:J = 0xfffffffL

.field private static final FLAG_DIRTY_AUTO_COMMIT:J = 0x10L

.field private static final FLAG_DIRTY_AUTO_COMMIT_DELAY:J = 0x20L

.field private static final FLAG_DIRTY_AUTO_SCROLL:J = 0x100L

.field private static final FLAG_DIRTY_AUTO_SCROLL_AREA:J = 0x400L

.field private static final FLAG_DIRTY_AUTO_SCROLL_DELAY:J = 0x200L

.field private static final FLAG_DIRTY_CONVERSION_MODE:J = 0x100000L

.field private static final FLAG_DIRTY_FILTER:J = 0x4L

.field private static final FLAG_DIRTY_HEIGHT_RANK:J = 0x2000L

.field private static final FLAG_DIRTY_INPUT_LANG:J = 0x2L

.field private static final FLAG_DIRTY_INPUT_MODE:J = 0x1L

.field private static final FLAG_DIRTY_JP_SPACE:J = 0x1000L

.field private static final FLAG_DIRTY_KANJI_RECOGNITION_MODE:J = 0x200000L

.field private static final FLAG_DIRTY_LEARNING_CONVERSION:J = 0x10000L

.field private static final FLAG_DIRTY_LEARNING_RECOGNITION:J = 0x20000L

.field private static final FLAG_DIRTY_SCHOOL_YEAR:J = 0x400000L

.field private static final FLAG_DIRTY_WORD_SPACING:J = 0x8L

.field private static final FLAG_IN_TRANSACTION:J = 0x10000000L

.field public static final KANJI_RECOGNITION_MODE_DEFAULT:I = 0x0

.field public static final KANJI_RECOGNITION_MODE_LEARNED_PRECEDE:I = 0x2

.field public static final KANJI_RECOGNITION_MODE_ONLY_LEARNED:I = 0x1

.field public static final SCHOOL_YEAR_ELEMENTARY1:I = 0x1

.field public static final SCHOOL_YEAR_ELEMENTARY2:I = 0x2

.field public static final SCHOOL_YEAR_ELEMENTARY3:I = 0x3

.field public static final SCHOOL_YEAR_ELEMENTARY4:I = 0x4

.field public static final SCHOOL_YEAR_ELEMENTARY5:I = 0x5

.field public static final SCHOOL_YEAR_ELEMENTARY6:I = 0x6

.field public static final SCHOOL_YEAR_JUNIOR_HIGH:I = 0x7

.field public static final SCHOOL_YEAR_UNSCPECIFIED:I


# instance fields
.field private autoCommitDelay_:I

.field private autoCommitEnabled_:Z

.field private autoScrollAreaWidth_:I

.field private autoScrollDelay_:I

.field private autoScrollEnabled_:Z

.field private conversionMode_:I

.field private ctx_:Landroid/content/Context;

.field public dispColorList:Z

.field public dispFilterList:Z

.field public dispWidthList:Z

.field private filters_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private flags_:J

.field public fullscreenEnabled:Z

.field private inputLang_:Ljava/lang/String;

.field private inputModeInReedit_:I

.field private inputMode_:I

.field public isAutoLearningEnabled:Z

.field public isBaselineUp:Z

.field public isHigherHwPanel:Z

.field public isPrevNextKeysEnabled:Z

.field private jpDefaultSpace_:I

.field private kanjiRecognitionMode_:I

.field private learnConversionEnabled_:Z

.field private learnRecognitionEnabled_:Z

.field public lineColor:I

.field public lineWidthType:I

.field private mazecHeightRank_:I

.field public mazecSettingPassword:Ljava/lang/String;

.field private schoolYear_:I

.field public showAdvertisement:Z

.field public showCnvCandidates:Z

.field public useButtonType:I

.field private wordSpacingCoef_:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->ctx_:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const/4 v0, 0x2

    .line 94
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputMode_:I

    .line 124
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputModeInReedit_:I

    .line 137
    sget-object v0, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputLang_:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    const v0, 0x3ecccccd    # 0.4f

    .line 212
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->wordSpacingCoef_:F

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitEnabled_:Z

    const/16 v1, 0x3e8

    .line 235
    iput v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitDelay_:I

    const/4 v1, 0x1

    .line 291
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollEnabled_:Z

    const/16 v2, 0x1f4

    .line 293
    iput v2, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollDelay_:I

    const/16 v2, 0x1a

    .line 295
    iput v2, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollAreaWidth_:I

    .line 356
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->jpDefaultSpace_:I

    const/4 v2, 0x4

    .line 388
    iput v2, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecHeightRank_:I

    .line 419
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnConversionEnabled_:Z

    .line 441
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnRecognitionEnabled_:Z

    .line 466
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->conversionMode_:I

    .line 500
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->kanjiRecognitionMode_:I

    .line 540
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->schoolYear_:I

    .line 576
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    .line 577
    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    iput v2, p0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    .line 578
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->fullscreenEnabled:Z

    .line 580
    iput v1, p0, Lcom/metamoji/mazec/MazecPreferences;->useButtonType:I

    .line 583
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispFilterList:Z

    .line 584
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispColorList:Z

    .line 585
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispWidthList:Z

    .line 586
    sget-object v2, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/metamoji/mazec/MazecPreferences;->isHigherHwPanel:Z

    .line 587
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->isBaselineUp:Z

    .line 589
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->showCnvCandidates:Z

    .line 591
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->showAdvertisement:Z

    .line 593
    const-string v2, ""

    iput-object v2, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecSettingPassword:Ljava/lang/String;

    .line 594
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->isAutoLearningEnabled:Z

    .line 595
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->isPrevNextKeysEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->ctx_:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const/4 v0, 0x2

    .line 94
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputMode_:I

    .line 124
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputModeInReedit_:I

    .line 137
    sget-object v0, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputLang_:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    const v0, 0x3ecccccd    # 0.4f

    .line 212
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->wordSpacingCoef_:F

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitEnabled_:Z

    const/16 v1, 0x3e8

    .line 235
    iput v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitDelay_:I

    const/4 v1, 0x1

    .line 291
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollEnabled_:Z

    const/16 v2, 0x1f4

    .line 293
    iput v2, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollDelay_:I

    const/16 v2, 0x1a

    .line 295
    iput v2, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollAreaWidth_:I

    .line 356
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->jpDefaultSpace_:I

    const/4 v2, 0x4

    .line 388
    iput v2, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecHeightRank_:I

    .line 419
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnConversionEnabled_:Z

    .line 441
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnRecognitionEnabled_:Z

    .line 466
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->conversionMode_:I

    .line 500
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->kanjiRecognitionMode_:I

    .line 540
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->schoolYear_:I

    .line 576
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    .line 577
    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    iput v2, p0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    .line 578
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->fullscreenEnabled:Z

    .line 580
    iput v1, p0, Lcom/metamoji/mazec/MazecPreferences;->useButtonType:I

    .line 583
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispFilterList:Z

    .line 584
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispColorList:Z

    .line 585
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispWidthList:Z

    .line 586
    sget-object v2, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/metamoji/mazec/MazecPreferences;->isHigherHwPanel:Z

    .line 587
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->isBaselineUp:Z

    .line 589
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->showCnvCandidates:Z

    .line 591
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->showAdvertisement:Z

    .line 593
    const-string v2, ""

    iput-object v2, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecSettingPassword:Ljava/lang/String;

    .line 594
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->isAutoLearningEnabled:Z

    .line 595
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->isPrevNextKeysEnabled:Z

    .line 89
    iput-object p1, p0, Lcom/metamoji/mazec/MazecPreferences;->ctx_:Landroid/content/Context;

    return-void
.end method

.method protected static loadFilters(Landroid/content/SharedPreferences;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 784
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 785
    const-string/jumbo v1, "selected_filters"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 789
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 790
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 791
    aget-object v4, v1, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 792
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 796
    :cond_1
    :try_start_0
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 798
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Failed to parse filter preference %s %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Mazec"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method protected static saveFilters(Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 807
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 808
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 809
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 810
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const-string/jumbo v1, "selected_filters"

    if-lez p0, :cond_2

    .line 815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 817
    :cond_2
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public doTransaction(Lcom/metamoji/mazec/MazecPreferences$Transactional;)V
    .locals 8

    .line 834
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    or-long/2addr v0, v2

    .line 835
    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v0, 0xfffffff

    const-wide/32 v2, -0x10000001

    .line 837
    :try_start_0
    invoke-interface {p1, p0}, Lcom/metamoji/mazec/MazecPreferences$Transactional;->doInTransaction(Lcom/metamoji/mazec/MazecPreferences;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    iget-wide v4, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    and-long/2addr v0, v4

    cmp-long p1, v0, v6

    if-eqz p1, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 839
    iget-wide v4, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    .line 840
    iget-wide v2, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 841
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    .line 843
    :cond_1
    throw p1

    .line 848
    :cond_2
    invoke-interface {p1, p0}, Lcom/metamoji/mazec/MazecPreferences$Transactional;->doInTransaction(Lcom/metamoji/mazec/MazecPreferences;)V

    return-void
.end method

.method public getAutoCommitDelay()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitDelay_:I

    return v0
.end method

.method public getAutoScrollAreaWidth()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollAreaWidth_:I

    return v0
.end method

.method public getAutoScrollDelay()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollDelay_:I

    return v0
.end method

.method public getConversionMode()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->conversionMode_:I

    return v0
.end method

.method public getFilter(Ljava/lang/String;)I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFilters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputLanguage()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputLang_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputMode()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputMode_:I

    return v0
.end method

.method public getInputModeInReedit()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputModeInReedit_:I

    return v0
.end method

.method public getJpDefaultSpace()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->jpDefaultSpace_:I

    return v0
.end method

.method public getKanjiRecognitionMode()I
    .locals 1

    .line 503
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->kanjiRecognitionMode_:I

    return v0
.end method

.method public getMazecHeightRank()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecHeightRank_:I

    return v0
.end method

.method public getSchoolYear()I
    .locals 1

    .line 543
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->schoolYear_:I

    return v0
.end method

.method public getWordSpacingCoefficient()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->wordSpacingCoef_:F

    return v0
.end method

.method public importFrom(Landroid/content/Context;)V
    .locals 4

    .line 823
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecPreferences;->load(Landroid/content/Context;)V

    .line 824
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0xfffffff

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public isAutoCommitEnabled()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitEnabled_:Z

    return v0
.end method

.method public isAutoScrollEnabled()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollEnabled_:Z

    return v0
.end method

.method public isLearnConversionEnabled()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->learnConversionEnabled_:Z

    return v0
.end method

.method public isLearnRecognitionEnabled()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->learnRecognitionEnabled_:Z

    return v0
.end method

.method public load()V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->ctx_:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecPreferences;->load(Landroid/content/Context;)V

    return-void
.end method

.method protected load(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 607
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 609
    const-string v0, "input_mode"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->inputMode_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputMode_:I

    .line 611
    const-string v0, "input_language"

    iget-object v1, p0, Lcom/metamoji/mazec/MazecPreferences;->inputLang_:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputLang_:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 613
    sget-object v0, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputLang_:Ljava/lang/String;

    .line 617
    :cond_1
    invoke-static {p1}, Lcom/metamoji/mazec/MazecPreferences;->loadFilters(Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    .line 620
    const-string/jumbo v0, "wordspacing_coef"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->wordSpacingCoef_:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->wordSpacingCoef_:F

    .line 622
    const-string v0, "auto_commit_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitEnabled_:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitEnabled_:Z

    .line 623
    const-string v0, "auto_commit_delay"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitDelay_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitDelay_:I

    .line 625
    const-string v0, "auto_scroll_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollEnabled_:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollEnabled_:Z

    .line 626
    const-string v0, "auto_scroll_delay"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollDelay_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollDelay_:I

    .line 627
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollAreaWidth_:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_scroll_area_width"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollAreaWidth_:I

    const/4 v0, 0x0

    .line 629
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp_default_space"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->jpDefaultSpace_:I

    const/4 v0, 0x4

    .line 631
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mazec_height_rank"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecHeightRank_:I

    .line 634
    const-string v0, "learn_conversion_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnConversionEnabled_:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->learnConversionEnabled_:Z

    .line 635
    const-string v0, "learn_recognition_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnRecognitionEnabled_:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->learnRecognitionEnabled_:Z

    .line 637
    const-string/jumbo v0, "selected_lwt"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    .line 638
    const-string/jumbo v0, "selected_color"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    .line 639
    const-string v0, "fullscreen_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->fullscreenEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->fullscreenEnabled:Z

    const/4 v0, 0x1

    .line 641
    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->useButtonType:I

    .line 642
    const-string/jumbo v0, "show_cnv_candidates"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->showCnvCandidates:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->showCnvCandidates:Z

    .line 645
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_2

    .line 646
    const-string v0, "is_disp_filter_list"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->dispFilterList:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispFilterList:Z

    .line 647
    const-string v0, "is_disp_color_list"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->dispColorList:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispColorList:Z

    .line 648
    const-string v0, "is_disp_width_list"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->dispWidthList:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->dispWidthList:Z

    .line 649
    const-string v0, "is_higher_hw_panel"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->isHigherHwPanel:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->isHigherHwPanel:Z

    .line 650
    const-string v0, "is_baseline_up"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->isBaselineUp:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->isBaselineUp:Z

    .line 659
    :cond_2
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_3

    .line 660
    const-string v0, "is_show_advertisement"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->showAdvertisement:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->showAdvertisement:Z

    .line 664
    :cond_3
    const-string v0, "conversion_mode"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->conversionMode_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->conversionMode_:I

    .line 665
    const-string v0, "kanji_recognition_mode"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->kanjiRecognitionMode_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferences;->kanjiRecognitionMode_:I

    .line 666
    const-string/jumbo v0, "school_year"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->schoolYear_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->schoolYear_:I

    .line 669
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, -0x10000000

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    return-void
.end method

.method public save()V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->ctx_:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 674
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecPreferences;->save(Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method public save(Landroid/content/SharedPreferences;)V
    .locals 6

    .line 679
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xfffffff

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 689
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 690
    const-string v0, "input_mode"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->inputMode_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 693
    :cond_2
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 694
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/metamoji/mazec/MazecPreferences;->saveFilters(Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V

    .line 697
    :cond_3
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 698
    const-string v0, "input_language"

    iget-object v1, p0, Lcom/metamoji/mazec/MazecPreferences;->inputLang_:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 701
    :cond_4
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 702
    const-string/jumbo v0, "wordspacing_coef"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->wordSpacingCoef_:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 705
    :cond_5
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 706
    const-string v0, "auto_commit_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitEnabled_:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 708
    :cond_6
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 709
    const-string v0, "auto_commit_delay"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitDelay_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 712
    :cond_7
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    .line 713
    const-string v0, "auto_scroll_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollEnabled_:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 715
    :cond_8
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 716
    const-string v0, "auto_scroll_delay"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollDelay_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 718
    :cond_9
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    .line 719
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollAreaWidth_:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_scroll_area_width"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 722
    :cond_a
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_b

    .line 723
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->jpDefaultSpace_:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp_default_space"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 726
    :cond_b
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_c

    .line 727
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecHeightRank_:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mazec_height_rank"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 731
    :cond_c
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    .line 732
    const-string v0, "learn_conversion_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnConversionEnabled_:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 734
    :cond_d
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_e

    .line 735
    const-string v0, "learn_recognition_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnRecognitionEnabled_:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 738
    :cond_e
    const-string/jumbo v0, "selected_lwt"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 739
    const-string/jumbo v0, "selected_color"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 740
    const-string v0, "fullscreen_enabled"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->fullscreenEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 743
    const-string/jumbo v0, "show_cnv_candidates"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->showCnvCandidates:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 746
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_f

    .line 747
    const-string v0, "is_disp_filter_list"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->dispFilterList:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 748
    const-string v0, "is_disp_color_list"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->dispColorList:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 749
    const-string v0, "is_disp_width_list"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->dispWidthList:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 750
    const-string v0, "is_higher_hw_panel"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->isHigherHwPanel:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 751
    const-string v0, "is_baseline_up"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->isBaselineUp:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 760
    :cond_f
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_10

    .line 761
    const-string v0, "is_show_advertisement"

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecPreferences;->showAdvertisement:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 765
    :cond_10
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    .line 766
    const-string v0, "conversion_mode"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->conversionMode_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 769
    :cond_11
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x200000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    .line 770
    const-string v0, "kanji_recognition_mode"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->kanjiRecognitionMode_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 773
    :cond_12
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x400000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_13

    .line 774
    const-string/jumbo v0, "school_year"

    iget v1, p0, Lcom/metamoji/mazec/MazecPreferences;->schoolYear_:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 778
    :cond_13
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 780
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, -0x10000000

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    return-void
.end method

.method public setAutoCommitDelay(I)V
    .locals 1

    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitDelay(IZ)V

    return-void
.end method

.method public setAutoCommitDelay(IZ)V
    .locals 2

    .line 272
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitDelay_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitDelay_:I

    if-nez p2, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    iget-wide p1, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v0, 0x10000000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setAutoCommitEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitEnabled(ZZ)V

    return-void
.end method

.method public setAutoCommitEnabled(ZZ)V
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitEnabled_:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoCommitEnabled_:Z

    if-nez p2, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-wide p1, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v0, 0x10000000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setAutoScrollAreaWidth(I)V
    .locals 4

    .line 340
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollAreaWidth_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollAreaWidth_:I

    .line 346
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setAutoScrollDelay(I)V
    .locals 4

    .line 321
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollDelay_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollDelay_:I

    .line 327
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setAutoScrollEnabled(Z)V
    .locals 4

    .line 302
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollEnabled_:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecPreferences;->autoScrollEnabled_:Z

    .line 308
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setConversionMode(I)V
    .locals 4

    .line 473
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->conversionMode_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->conversionMode_:I

    .line 487
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 492
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setFilter(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/mazec/MazecPreferences;->setFilter(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setFilter(Ljava/lang/String;IZ)V
    .locals 2

    .line 194
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    iget-wide p1, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v0, 0x10000000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setFilters(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->filters_:Ljava/util/Map;

    .line 173
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setInputLanguage(Ljava/lang/String;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputLang_:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setInputMode(I)V
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setInputMode(IZ)V

    return-void
.end method

.method public setInputMode(IZ)V
    .locals 2

    .line 105
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->inputMode_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->inputMode_:I

    if-nez p2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-wide p1, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v0, 0x10000000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setInputModeInReedit(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->inputModeInReedit_:I

    return-void
.end method

.method public setJpDefaultSpace(I)V
    .locals 4

    .line 363
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->jpDefaultSpace_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->jpDefaultSpace_:I

    .line 378
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setKanjiRecognitionMode(I)V
    .locals 4

    .line 507
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->kanjiRecognitionMode_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 520
    :cond_1
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->kanjiRecognitionMode_:I

    .line 522
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setLearnConversionEnabled(Z)V
    .locals 4

    .line 426
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->learnConversionEnabled_:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnConversionEnabled_:Z

    .line 432
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setLearnRecognitionEnabled(Z)V
    .locals 4

    .line 448
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecPreferences;->learnRecognitionEnabled_:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecPreferences;->learnRecognitionEnabled_:Z

    .line 454
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setMazecHeightRank(I)V
    .locals 4

    .line 395
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecHeightRank_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->mazecHeightRank_:I

    .line 409
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method

.method public setSchoolYear(I)V
    .locals 4

    .line 547
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->schoolYear_:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 565
    :pswitch_0
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->schoolYear_:I

    .line 567
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setWordSpacingCoefficient(F)V
    .locals 4

    .line 219
    iget v0, p0, Lcom/metamoji/mazec/MazecPreferences;->wordSpacingCoef_:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iput p1, p0, Lcom/metamoji/mazec/MazecPreferences;->wordSpacingCoef_:F

    .line 224
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecPreferences;->flags_:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferences;->save()V

    return-void
.end method
