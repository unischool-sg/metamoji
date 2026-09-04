.class Lcom/metamoji/nt/NtMazecImsManager$16$1;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Lcom/metamoji/mazec/MazecPreferences$Transactional;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager$16;->set(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtMazecImsManager$16;

.field final synthetic val$settings:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager$16;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 758
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->this$1:Lcom/metamoji/nt/NtMazecImsManager$16;

    iput-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInTransaction(Lcom/metamoji/mazec/MazecPreferences;)V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsInputMode"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setInputMode(I)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsLanguage"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setInputLanguage(Ljava/lang/String;)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsRecognitionFilter"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setFilters(Ljava/util/Map;)V

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsWordSplitSpaceRatio"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setWordSpacingCoefficient(F)V

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsAutoInsert"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitEnabled(Z)V

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsAutoInsertDelayInterval"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitDelay(I)V

    .line 779
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsAutoScroll"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 780
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoScrollEnabled(Z)V

    .line 782
    :cond_6
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsAutoScrollDelayInterval"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 783
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoScrollDelay(I)V

    .line 785
    :cond_7
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsAutoScrollRegionWidth"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 786
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoScrollAreaWidth(I)V

    .line 788
    :cond_8
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsJpSpaceDefault"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 789
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setJpDefaultSpace(I)V

    .line 791
    :cond_9
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsHandwritingHeight"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 792
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setMazecHeightRank(I)V

    .line 794
    :cond_a
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsImplicitRecogLearningEnabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 795
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setLearnRecognitionEnabled(Z)V

    .line 797
    :cond_b
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsConversionLearningEnabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 798
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setLearnConversionEnabled(Z)V

    .line 800
    :cond_c
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsConversionMode"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 801
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/WorkSettings;->string2conversionMode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setConversionMode(I)V

    .line 803
    :cond_d
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsKanjiRecognitionMode"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 804
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/WorkSettings;->string2kanjiRecognitionMode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setKanjiRecognitionMode(I)V

    .line 806
    :cond_e
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    const-string v1, "MMJWorkSettingsSchoolYear"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 807
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$16$1;->val$settings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/WorkSettings;->string2schoolYear(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecPreferences;->setSchoolYear(I)V

    :cond_f
    return-void
.end method
