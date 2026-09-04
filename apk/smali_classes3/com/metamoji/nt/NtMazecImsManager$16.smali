.class Lcom/metamoji/nt/NtMazecImsManager$16;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->getUserSettings()Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 719
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$16;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createWorkSettings(Lcom/metamoji/mazec/MazecPreferences;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/MazecPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 731
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 732
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getInputMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MMJWorkSettingsInputMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v1, "MMJWorkSettingsLanguage"

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v1, "MMJWorkSettingsRecognitionFilter"

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getFilters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getWordSpacingCoefficient()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "MMJWorkSettingsWordSplitSpaceRatio"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->isAutoCommitEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MMJWorkSettingsAutoInsert"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getAutoCommitDelay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MMJWorkSettingsAutoInsertDelayInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->isAutoScrollEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MMJWorkSettingsAutoScroll"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getAutoScrollDelay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MMJWorkSettingsAutoScrollDelayInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getAutoScrollAreaWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MMJWorkSettingsAutoScrollRegionWidth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getJpDefaultSpace()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MMJWorkSettingsJpSpaceDefault"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getMazecHeightRank()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MMJWorkSettingsHandwritingHeight"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->isLearnRecognitionEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MMJWorkSettingsImplicitRecogLearningEnabled"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->isLearnConversionEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MMJWorkSettingsConversionLearningEnabled"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getConversionMode()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/mazec/WorkSettings;->conversinMode2string(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMJWorkSettingsConversionMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getKanjiRecognitionMode()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/mazec/WorkSettings;->kanjiRecognitionMode2string(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMJWorkSettingsKanjiRecognitionMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecPreferences;->getSchoolYear()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/mazec/WorkSettings;->schoolYear2string(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MMJWorkSettingsSchoolYear"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_ims(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtMazecImsManager$16;->createWorkSettings(Lcom/metamoji/mazec/MazecPreferences;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefault()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Lcom/metamoji/mazec/MazecPreferences;

    invoke-direct {v0}, Lcom/metamoji/mazec/MazecPreferences;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtMazecImsManager$16;->createWorkSettings(Lcom/metamoji/mazec/MazecPreferences;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_ims(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 758
    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$16$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMazecImsManager$16$1;-><init>(Lcom/metamoji/nt/NtMazecImsManager$16;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecPreferences;->doTransaction(Lcom/metamoji/mazec/MazecPreferences$Transactional;)V

    .line 811
    iget-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$16;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {p1}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_ims(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->resetPrefs(Lcom/metamoji/mazec/MazecPreferences;)V

    return-void
.end method
