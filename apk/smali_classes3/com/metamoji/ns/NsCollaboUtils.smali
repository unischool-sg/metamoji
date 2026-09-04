.class public Lcom/metamoji/ns/NsCollaboUtils;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COLLABO_URL_GET_SHAREANYTIME:Ljava/lang/String; = "http://getshareanytime.metamoji.com/?app=SP"

.field private static _fmt:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 764
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 758
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static boothIdWithPage(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)Ljava/lang/String;
    .locals 1

    .line 866
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/metamoji/ns/NsCollaboUtils;->boothIdWithPageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static boothIdWithPageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 851
    const-string/jumbo v0, "system:common"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "system:personal_template"

    .line 853
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "system:teacher_personal"

    .line 855
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "system:offline_personal"

    .line 856
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "system:personal"

    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method static containUnitWithId(Ljava/lang/String;Lcom/metamoji/df/controller/DfController;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 805
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 806
    const-string/jumbo v3, "unitId"

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, v0

    .line 810
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfController;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 811
    invoke-virtual {p1, v1}, Lcom/metamoji/df/controller/DfController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    .line 812
    invoke-static {p0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->containUnitWithId(Ljava/lang/String;Lcom/metamoji/df/controller/DfController;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static createDummyShareTemplateDic()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 738
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 740
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 743
    new-instance v1, Lcom/metamoji/ns/NsCollaboUtils$9;

    invoke-direct {v1, v0}, Lcom/metamoji/ns/NsCollaboUtils$9;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static createRoleParamString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 235
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    const-string v3, "address"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 237
    const-string/jumbo v4, "userId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    const-string/jumbo v4, "{ \"type\":\"%s\", \"address\":\"%s\", \"userId\":\"%s\" }"

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 240
    invoke-static {v0, p0}, Lcom/metamoji/ns/NsCollaboUtils;->jointString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createShareTemplateUserString(Ljava/util/Map;Ljava/lang/String;Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 715
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 717
    sget p1, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Btn_Participants_Sub:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/metamoji/nt/NtSheetInfoView;->formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 720
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 721
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "      "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 724
    const-string v0, "nickname"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdMemberNoNickname:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static currentBoothId(Lcom/metamoji/nt/NtPageController;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 771
    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->currentBoothId(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static currentBoothId(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 776
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 781
    const-string v2, "TheNoteLaserP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "system:teacher_personal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 789
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v2

    .line 790
    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->containUnitWithId(Ljava/lang/String;Lcom/metamoji/df/controller/DfController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/metamoji/ns/NsCollaboUtils;->boothIdWithPageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static currentBoothIdForModels(Lcom/metamoji/nt/NtPageController;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtPageController;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 823
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v0

    .line 825
    const-string/jumbo v1, "system:teacher_personal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 831
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 832
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 834
    instance-of v2, v1, Lcom/metamoji/nt/NtLayerController;

    if-eqz v2, :cond_1

    .line 835
    check-cast v1, Lcom/metamoji/nt/NtLayerController;

    .line 836
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p1

    .line 837
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->boothIdWithPageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 839
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    goto :goto_0

    .line 846
    :cond_2
    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->currentBoothId(Lcom/metamoji/nt/NtPageController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 100
    const-string p0, ""

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const p0, 0x10016

    .line 105
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dateTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 113
    const-string p0, ""

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const p0, 0x10017

    .line 118
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dateTimeStringWithoutWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 126
    const-string p0, ""

    return-object p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const p0, 0x20015

    .line 131
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOwnerNickName()Ljava/lang/String;
    .locals 3

    .line 616
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 620
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 624
    :cond_1
    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    if-nez v0, :cond_2

    return-object v1

    .line 628
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getOwnerNickName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 629
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method private static getServerTimeFormat()Ljava/text/DateFormat;
    .locals 3

    .line 71
    sget-object v0, Lcom/metamoji/ns/NsCollaboUtils;->_fmt:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmssSSS"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboUtils;->_fmt:Ljava/text/DateFormat;

    .line 73
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 75
    :cond_0
    sget-object v0, Lcom/metamoji/ns/NsCollaboUtils;->_fmt:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getShareAnytime()V
    .locals 3

    .line 249
    const-string v0, "http://getshareanytime.metamoji.com/?app=SP"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 251
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static getShareTemplateInfoString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 678
    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->validateShareTemplateDic(Ljava/util/Map;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 684
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "presenterArray"

    sget v5, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Chair:I

    invoke-static {p0, v4, v0, v5}, Lcom/metamoji/ns/NsCollaboUtils;->createShareTemplateUserString(Ljava/util/Map;Ljava/lang/String;Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "speakerArray"

    sget v5, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Presenter:I

    invoke-static {p0, v4, v0, v5}, Lcom/metamoji/ns/NsCollaboUtils;->createShareTemplateUserString(Ljava/util/Map;Ljava/lang/String;Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "visitorArray"

    sget v5, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Viewer:I

    invoke-static {p0, v4, v0, v5}, Lcom/metamoji/ns/NsCollaboUtils;->createShareTemplateUserString(Ljava/util/Map;Ljava/lang/String;Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 694
    const-string/jumbo v3, "roomType"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 696
    const-string v3, "casual"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    sget p0, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_RoomType_Casual:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 699
    :cond_1
    const-string v3, "formal"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 701
    sget p0, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_RoomType_Formal:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 702
    :cond_2
    const-string v3, "limited"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 704
    sget p0, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_RoomType_Limited:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 707
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "    "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v2, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Btn_Guests:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtSheetInfoView;->formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2
.end method

.method public static jointString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 206
    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->jointString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jointString(Ljava/util/List;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 213
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x22

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jumpAddOnStore()V
    .locals 0

    return-void
.end method

.method public static jumpAddOnStoreToAnytimeService()V
    .locals 0

    return-void
.end method

.method public static parseTimestampString(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 64
    :try_start_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboUtils;->getServerTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showAlertMessage(I)V
    .locals 1

    .line 138
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static showAlertMessage(ILcom/metamoji/ns/INsCollaboAction;)V
    .locals 1

    .line 141
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static showAlertMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-static {p0, v0, p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static showAlertMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 2

    .line 154
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ns/NsCollaboUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showCabinetUserRegistrationMessage(I)V
    .locals 2

    .line 176
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboUtils$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboUtils$2;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showCreateRoomErrorMessage(Ljava/lang/Exception;)Z
    .locals 2

    .line 298
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->responseCodeFromException(Ljava/lang/Exception;)I

    move-result v0

    const/16 v1, 0x190

    .line 299
    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceException;->checkResponseCode(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 300
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCodeFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCode(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xc9

    const/4 v1, 0x1

    if-eq p0, v0, :cond_4

    const/16 v0, 0xca

    if-eq p0, v0, :cond_3

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_2

    const/16 v0, 0xcd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Error_Lobby_301:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return v1

    .line 392
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/ns/NsCollaboUtils$6;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboUtils$6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v1

    .line 361
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/ns/NsCollaboUtils$5;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboUtils$5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v1

    .line 336
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/ns/NsCollaboUtils$4;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboUtils$4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v1

    .line 305
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/ns/NsCollaboUtils$3;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboUtils$3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static showLoginRoomErrorMessage(Ljava/lang/Exception;Lcom/metamoji/ns/INsCollaboAction;)Z
    .locals 4

    .line 436
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->responseCodeFromException(Ljava/lang/Exception;)I

    move-result v0

    const/16 v1, 0x190

    .line 437
    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceException;->checkResponseCode(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 440
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCodeFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCode(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xd6

    const/4 v2, 0x1

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x130

    if-eq p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    .line 466
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Error_Lobby_304:I

    .line 468
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->setRoomClosed()V

    .line 470
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 472
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CAN_NOT_REFLECT_OFFLINE_EDIT_BY_ROOM_CLOSED:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    .line 473
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/ns/NsCollaboUtils$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/metamoji/ns/NsCollaboUtils$7;-><init>(Ljava/lang/String;Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v2

    .line 460
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Error_Lobby_303:I

    goto :goto_0

    .line 455
    :cond_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->Error_Lobby_301:I

    goto :goto_0

    .line 450
    :cond_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Error_Lobby_215:I

    goto :goto_0

    .line 445
    :cond_4
    sget p0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Error_Lobby_214:I

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 503
    invoke-static {p0, p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(ILcom/metamoji/ns/INsCollaboAction;)V

    return v2

    :cond_6
    return v1
.end method

.method public static showLoginRoomErrorMessageForSocket(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 524
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, -0x62

    const/4 v2, 0x1

    if-eq p0, v1, :cond_0

    const/16 v1, -0xa

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    move p0, v0

    goto :goto_0

    .line 528
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Error_Collabo_1:I

    goto :goto_0

    .line 533
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Error_Collabo_2:I

    goto :goto_0

    .line 541
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->ForBiz_LoginRoom_Error_Collabo_3:I

    goto :goto_0

    .line 553
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->ForBiz_LoginRoom_Error_Collabo_4:I

    goto :goto_0

    .line 565
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$string;->ForBiz_LoginRoom_Error_Collabo_5:I

    goto :goto_0

    .line 574
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Error_Collabo_6:I

    :goto_0
    if-eqz p0, :cond_1

    .line 598
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    .line 604
    invoke-static {p0, p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return v2

    .line 583
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    .line 585
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance p1, Lcom/metamoji/ns/NsCollaboUtils$8;

    invoke-direct {p1}, Lcom/metamoji/ns/NsCollaboUtils$8;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v2

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static timestampString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 83
    const-string p0, ""

    return-object p0

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 88
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p0

    if-nez p0, :cond_1

    const p0, 0x10011

    goto :goto_0

    :cond_1
    const p0, 0x10001

    .line 92
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateShareTemplateDic(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 642
    :cond_0
    const-string/jumbo v1, "version"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 643
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_1

    goto :goto_1

    .line 648
    :cond_1
    const-string v1, "companyId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 651
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 657
    :cond_3
    :goto_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Template_Not_Use_Share_Template_Msg_Invalid_CompanyId_ForBiz:I

    return p0

    .line 644
    :cond_4
    :goto_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->Template_Not_Use_Share_Template_Msg_Unknown_Version:I

    return p0
.end method
