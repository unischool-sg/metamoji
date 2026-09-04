.class public Lcom/metamoji/forSchool/ScSchoolUtils;
.super Ljava/lang/Object;
.source "ScSchoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ScSchoolUtils$NumClassNumberComparator;,
        Lcom/metamoji/forSchool/ScSchoolUtils$StrClassNumberComparator;,
        Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator;,
        Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator;,
        Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator2;,
        Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;,
        Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final MAX_DISTRIBUTE_SHARED_DRIVE_COUNT:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alreadyJoinedClassNote(Ljava/lang/String;)Z
    .locals 5

    .line 1173
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1178
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1183
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 1188
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    .line 1208
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_5

    return v3

    .line 1193
    :cond_3
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 1194
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    return v3

    .line 1199
    :cond_4
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method public static checkMaxDistributeSharedDrives(I)Z
    .locals 1

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    .line 1561
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1562
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MAX_DISTRIBUTE_SHARE_DRIVES_MSG:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static correctUserLoginName(Lcom/metamoji/nt/NtNoteController;)V
    .locals 4

    .line 1412
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    .line 1413
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1415
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->isNeedSort(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    new-instance v1, Lcom/metamoji/forSchool/ScSchoolUtils$1;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/forSchool/ScSchoolUtils$1;-><init>(Ljava/util/List;Lcom/metamoji/nt/NtNoteController;)V

    .line 1457
    new-instance p0, Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;-><init>()V

    .line 1458
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;->groupId:Ljava/lang/String;

    .line 1459
    sget-object v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 1460
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;

    const-string v3, "executeGetAllUsersWithParams"

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 1461
    invoke-virtual {v2}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->forceLoad()V

    :cond_0
    return-void
.end method

.method public static createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    const-string v1, "group-id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string p0, "group-name"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "user-list"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createGroupDicForNonGroup()Ljava/util/Map;
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

    .line 183
    const-string v0, ""

    invoke-static {v0, v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static createGroupDicForTeacher()Ljava/util/Map;
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

    .line 176
    const-string v0, "TEACHER"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static createGroupDicWithGenerateId(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static createInitClassDic()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-string v1, "className"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "groupDicList"

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->createInitGroupList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createInitGroupList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDicForTeacher()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDicForNonGroup()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget v1, Lcom/metamoji/noteanytime/R$string;->School_Team_Name_Default_Format:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_0

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDicWithGenerateId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static duplicateDic(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 335
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 338
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 339
    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 340
    :cond_2
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 341
    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    .line 344
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static duplicateList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 317
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 318
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 319
    :cond_2
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 320
    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static existGroupName(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 208
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 210
    const-string v1, "group-name"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static generateNewGroupName(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_Team_Name_Default_Format:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x12d

    if-ge v1, v2, :cond_1

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v2, p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->existGroupName(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    monitor-exit p0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    .line 93
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 95
    :catch_0
    new-instance p0, Ljava/math/BigDecimal;

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p0
.end method

.method public static getClassDicList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 137
    const-string v1, "forSchoolClassDicList"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static getCompanyId()Ljava/lang/String;
    .locals 3

    .line 481
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 485
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentLayerImage(Lcom/metamoji/nt/NtPageController;)I
    .locals 2

    .line 941
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->school_layer_edit:I

    if-eqz p0, :cond_4

    .line 942
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 943
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p0

    .line 948
    const-string v1, "system:common"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_layer_common:I

    return p0

    .line 951
    :cond_1
    const-string v1, "system:personal_template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_layer_personal:I

    return p0

    .line 953
    :cond_2
    const-string v1, "system:personal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 954
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_layer_personal:I

    return p0

    .line 956
    :cond_3
    const-string v1, "system:teacher_personal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 958
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_layer_personal:I

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static getCurrentLayerSubText(Lcom/metamoji/nt/NtPageController;)I
    .locals 5

    .line 1001
    sget v0, Lcom/metamoji/noteanytime/R$string;->EditLayer_Edit:I

    if-eqz p0, :cond_9

    .line 1002
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1003
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    .line 1008
    const-string v2, "system:common"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1009
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHARED:I

    return p0

    .line 1010
    :cond_1
    const-string v2, "system:edit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1011
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_BASIC:I

    return p0

    .line 1013
    :cond_2
    const-string v2, "system:personal_template"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    .line 1014
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1015
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GROUP:I

    return p0

    .line 1016
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p0

    if-ne p0, v3, :cond_4

    .line 1017
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASS:I

    return p0

    .line 1019
    :cond_4
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_INDIVIDUAL:I

    return p0

    .line 1021
    :cond_5
    const-string v2, "system:personal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1022
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1023
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GROUP:I

    return p0

    .line 1024
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p0

    if-ne p0, v3, :cond_7

    .line 1025
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASS:I

    return p0

    .line 1027
    :cond_7
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_INDIVIDUAL:I

    return p0

    .line 1030
    :cond_8
    const-string p0, "system:teacher_personal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1032
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_TEACHER_PERSONAL:I

    return p0

    :cond_9
    :goto_0
    return v0
.end method

.method public static getCurrentLayerText(Lcom/metamoji/nt/NtPageController;)I
    .locals 3

    .line 970
    sget v0, Lcom/metamoji/noteanytime/R$string;->EditLayer_Edit:I

    if-eqz p0, :cond_5

    .line 971
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 972
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    .line 977
    const-string v2, "system:common"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 978
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHARED_LAYER:I

    return p0

    .line 979
    :cond_1
    const-string v2, "system:edit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 980
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_BASIC_LAYER:I

    return p0

    .line 982
    :cond_2
    const-string v2, "system:personal_template"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 983
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getEditLayerName(I)I

    move-result p0

    return p0

    .line 984
    :cond_3
    const-string v2, "system:personal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 985
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getEditLayerName(I)I

    move-result p0

    return p0

    .line 987
    :cond_4
    const-string p0, "system:teacher_personal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 989
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_TEACHER_PERSONAL_LAYER:I

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static getEditLayerName(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 931
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_INDIVIDUAL_LAYER:I

    return p0

    .line 928
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASS_LAYER:I

    return p0

    .line 925
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GROUP_LAYER:I

    return p0

    .line 922
    :cond_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_INDIVIDUAL_LAYER:I

    return p0
.end method

.method public static getEditLayerPersonalLabel()Ljava/lang/String;
    .locals 1

    .line 454
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_STUDENT_EDITABLE_LAYER_AFTER_DELIVERY:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEditLayerPersonalMenuTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I
    .locals 7

    .line 422
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 424
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 426
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 428
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    .line 429
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 430
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 431
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 433
    :goto_1
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    .line 434
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_PERSONAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_PERSONAL_TEMPLATE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_2

    goto :goto_2

    .line 437
    :cond_2
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_TEACHER_PERSONAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_6

    .line 438
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EDIT_TEACHER_PERSONAL_LAYER:I

    return p0

    .line 436
    :cond_3
    :goto_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EDIT_INDIVIDUAL_LAYER:I

    return p0

    :cond_4
    if-eqz v5, :cond_5

    .line 442
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EDIT_GROUP_LAYER:I

    return p0

    :cond_5
    if-eqz v3, :cond_6

    .line 444
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EDIT_CLASS_LAYER:I

    return p0

    .line 450
    :cond_6
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EDIT_INDIVIDUAL_LAYER:I

    return p0
.end method

.method public static getEveryoneAnswerImage(Lcom/metamoji/nt/NtNoteController;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1065
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1070
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->forbid_browsing_everyone:I

    goto :goto_0

    .line 1067
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->allow_browsing_everyone:I

    goto :goto_0

    .line 1069
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->allow_editing_everyone:I

    :goto_0
    const/high16 v0, 0x42200000    # 40.0f

    .line 1073
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 1074
    invoke-static {v0, v0, p0}, Lcom/metamoji/ui/HoverCm;->makeImage(III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getMemberDic(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 236
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 239
    const-string v1, "user-list"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 244
    check-cast v1, Ljava/util/Map;

    .line 245
    const-string v2, "user-id"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    const-string p0, "user-name"

    invoke-static {v1, p0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 249
    const-string p1, "class-number"

    invoke-static {v1, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 250
    const-string v0, "login-name"

    invoke-static {v1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 252
    const-string v3, "type"

    const-string v4, "dcUser"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v3, "address"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v3, "userId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "nickname"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string p0, "classNumber"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string p0, "loginName"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMemberDicListFromGroupList(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 276
    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 278
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 279
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 280
    :goto_0
    const-string v4, "user-list"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 282
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 283
    check-cast v4, Ljava/util/Map;

    .line 284
    const-string v5, "user-name"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    const-string v6, "user-id"

    invoke-static {v4, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 286
    const-string v7, "class-number"

    invoke-static {v4, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 287
    const-string v8, "login-name"

    invoke-static {v4, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 288
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 289
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 290
    const-string v9, "type"

    const-string v10, "dcUser"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v9, "address"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v9, "userId"

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v6, "nickname"

    invoke-interface {v8, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v5, "classNumber"

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v5, "loginName"

    invoke-interface {v8, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    :cond_3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 303
    const-string p1, "teacher"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string p1, "member"

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static getPageController(Ljava/lang/String;)Lcom/metamoji/nt/NtPageController;
    .locals 4

    .line 494
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 498
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 499
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPersonalLayerIds(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 1515
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    .line 1520
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 1521
    check-cast p2, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 1525
    const-string v2, "group-id"

    invoke-static {p2, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1526
    const-string v2, ""

    .line 1527
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TEACHER"

    .line 1528
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1531
    :cond_4
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1532
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1535
    :cond_5
    const-string v2, "user-list"

    invoke-static {p2, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_3

    .line 1537
    monitor-enter p2

    .line 1538
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 1540
    const-string v4, "user-id"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1542
    invoke-static {p1, v3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1543
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1547
    :cond_7
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static getSchoolPageType(Lcom/metamoji/df/model/IModel;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1577
    :cond_0
    invoke-static {p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->hasSchoolPageTypeForPageModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1582
    :cond_1
    const-string v1, "forSchoolPageType"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 1588
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static getSchoolPageTypeBtnImage(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 866
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_page_normal:I

    return p0

    .line 863
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_page_class:I

    return p0

    .line 860
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_page_group:I

    return p0

    .line 857
    :cond_2
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_page_user:I

    return p0
.end method

.method public static getSchoolPageTypeBtnTitle(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 891
    sget p0, Lcom/metamoji/noteanytime/R$string;->School_Label_Pagetype_Normal:I

    return p0

    .line 888
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->School_Label_Pagetype_Personal_Class:I

    return p0

    .line 885
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->School_Label_Pagetype_Personal_Group:I

    return p0

    .line 882
    :cond_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->School_Label_Pagetype_Personal_User:I

    return p0
.end method

.method public static getSchoolPageTypeDefaultValue()I
    .locals 3

    .line 1615
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1616
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 1617
    const-string v2, "forSchoolDefaultSchoolPageType"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public static getSchoolPageTypeSubBtnTitle(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 911
    sget p0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_LECTURE_PAGE:I

    return p0

    .line 908
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASS:I

    return p0

    .line 905
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GROUP:I

    return p0

    .line 902
    :cond_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_INDIVIDUAL:I

    return p0
.end method

.method public static getStatusDoItImage(ZZ)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 1048
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_doit_on_jp:I

    return p0

    .line 1050
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_doit_jp:I

    return p0

    :cond_1
    if-eqz p0, :cond_2

    .line 1054
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_doit_on:I

    return p0

    .line 1056
    :cond_2
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_doit:I

    return p0
.end method

.method public static getStatusHelpImage(Z)I
    .locals 1

    .line 1083
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->school_help:I

    if-eqz p0, :cond_0

    .line 1085
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->school_help_on:I

    return p0

    :cond_0
    return v0
.end method

.method public static getUserClassNumberAndLoginNameMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 1124
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1126
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->memberList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1129
    const-string v2, "addMemberFromSharedDrive."

    invoke-static {p0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    goto :goto_2

    .line 1136
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1137
    const-string v2, "status"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_1

    .line 1143
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 1144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1148
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_5

    goto :goto_1

    .line 1153
    :cond_5
    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1154
    const-string v3, "classNumber"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1155
    const-string v5, "loginName"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v4, :cond_6

    .line 1157
    const-string v4, ""

    .line 1159
    :cond_6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1160
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    .line 461
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 465
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 3

    .line 471
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 475
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasSchoolPageTypeForPageModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 1594
    const-string v0, "forSchoolPageType"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBelongClassStudent()Z
    .locals 1

    .line 1222
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBelongClassStudentWithUserId(Ljava/lang/String;)Z
    .locals 1

    .line 1226
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isBigDecimal(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static isClassLayerId(Ljava/lang/String;)Z
    .locals 1

    .line 119
    const-string v0, "_[layer-forClass]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isCurrentPageForClass()Z
    .locals 3

    .line 354
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static isCurrentPageForUserOrGroupOrClass()Z
    .locals 5

    .line 406
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 413
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 414
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3

    :cond_2
    return v1
.end method

.method public static isDecimal(Ljava/lang/String;)Z
    .locals 0

    .line 71
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static isNeedSort(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1468
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1470
    check-cast v1, Ljava/util/Map;

    .line 1472
    const-string v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1475
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1477
    check-cast v2, Ljava/util/Map;

    .line 1478
    const-string v3, "login-name"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1479
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_0

    :cond_4
    return v0
.end method

.method public static isOutputTargetPersonalLayerId(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 825
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 827
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isOutputTargetTeacherPersonalLayerId(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 840
    const-string v0, "visibleTeacherPersonalLayerId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 842
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPersonalLayer()Z
    .locals 2

    .line 385
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system:personal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPersonalLayerId(Ljava/lang/String;)Z
    .locals 1

    .line 113
    const-string v0, "_[layer-forUser]_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_[layer-forGroup]_"

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_[layer-forClass]"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSchoolEveryoneAnswerCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z
    .locals 1

    .line 1113
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EVERYONE_ANSWER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p0

    return p0
.end method

.method public static isSchoolPageTypeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z
    .locals 1

    .line 1106
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_NORMAL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_USER:Lcom/metamoji/nt/NtCommand;

    .line 1107
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_GROUP:Lcom/metamoji/nt/NtCommand;

    .line 1108
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_CLASS:Lcom/metamoji/nt/NtCommand;

    .line 1109
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSchoolTeacherModeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z
    .locals 1

    .line 1096
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_FREE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_PRESENTER:Lcom/metamoji/nt/NtCommand;

    .line 1097
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_LOCK:Lcom/metamoji/nt/NtCommand;

    .line 1098
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_MONITORING:Lcom/metamoji/nt/NtCommand;

    .line 1099
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isTeacherPersonalLayer()Z
    .locals 2

    .line 368
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system:teacher_personal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTeacherPersonalLayerId(Ljava/lang/String;)Z
    .locals 1

    .line 128
    const-string v0, "_[layer-forTeacherPersonal]_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static openUrl(Landroid/net/Uri;)V
    .locals 4

    .line 1389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1391
    :try_start_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1393
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1397
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1399
    invoke-static {}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->isWebUnitEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 1403
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1404
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 1405
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v3, p0, v1, v2}, Lcom/metamoji/nt/INtEditor;->prepareWebPage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static outputTargetPersonalLayerIdDic(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    .line 775
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 781
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string p1, "group-id"

    invoke-static {p0, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 785
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 786
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static outputTargetPersonalLayerIdDicFromGroupId(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 808
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    .line 811
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 814
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, p0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static outputTargetSchoolLayerInfo()Ljava/util/Map;
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

    const/4 v0, 0x0

    .line 534
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static outputTargetSchoolLayerInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 539
    invoke-static {p0, v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static outputTargetSchoolLayerInfo(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtPageController;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 547
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 548
    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v2, :cond_17

    .line 549
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    if-eqz v2, :cond_17

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move v8, v4

    goto :goto_1

    .line 564
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object v7

    .line 565
    const-string v8, "personalId"

    const-string v9, "isGroup"

    if-eqz v7, :cond_1

    .line 566
    invoke-static {v7, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 567
    invoke-static {v7, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v7, v6

    const/4 v10, 0x0

    :goto_0
    if-nez v7, :cond_3

    .line 572
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 574
    iget-object v7, v11, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    :cond_2
    if-nez v7, :cond_3

    .line 578
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModeInfoDic()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 580
    invoke-static {v11, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 581
    invoke-static {v11, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :cond_3
    const/4 v8, 0x0

    .line 586
    :goto_1
    const-string v9, "system:edit"

    const/4 v11, 0x2

    const-string v12, "system:personal"

    const/4 v13, 0x3

    if-eqz v7, :cond_e

    .line 589
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v14

    if-eqz p1, :cond_4

    .line 591
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v14, p1

    :cond_4
    if-eqz v14, :cond_17

    .line 596
    invoke-virtual {v14}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v15

    if-eqz v15, :cond_17

    if-nez v8, :cond_5

    .line 599
    invoke-virtual {v15}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_6

    :cond_5
    if-eqz v10, :cond_6

    move-object v5, v7

    goto :goto_3

    .line 617
    :cond_6
    invoke-virtual {v2, v7}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 621
    const-string v9, "group-id"

    invoke-static {v5, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 622
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move-object v5, v6

    :goto_2
    move-object v6, v7

    goto :goto_3

    :cond_8
    move-object v5, v6

    :goto_3
    if-nez v8, :cond_b

    .line 632
    invoke-virtual {v14}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v8

    if-ne v8, v4, :cond_9

    if-eqz v6, :cond_b

    .line 634
    invoke-virtual {v15}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    .line 637
    :cond_9
    invoke-virtual {v14}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v8

    if-ne v8, v11, :cond_a

    if-eqz v5, :cond_b

    .line 639
    invoke-virtual {v15}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    .line 642
    :cond_a
    invoke-virtual {v14}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v8

    if-ne v8, v13, :cond_b

    .line 644
    invoke-virtual {v15}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    if-eqz v6, :cond_c

    .line 654
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v6}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz v5, :cond_d

    .line 658
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :goto_4
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 666
    invoke-static {v2, v7}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetTeacherPersonalLayerIdDic(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto/16 :goto_5

    .line 679
    :cond_e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 682
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 684
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 686
    invoke-virtual {v6}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_6

    .line 691
    :cond_f
    invoke-virtual {v6}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "system:common"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 694
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    if-ne v2, v13, :cond_10

    goto/16 :goto_5

    .line 703
    :cond_10
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 707
    :cond_11
    invoke-virtual {v6}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 710
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v7

    if-ne v7, v13, :cond_12

    .line 714
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 716
    :cond_12
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v7

    if-ne v7, v11, :cond_13

    .line 720
    invoke-virtual {v6}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 722
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetPersonalLayerIdDicFromGroupId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_5

    .line 725
    :cond_13
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v5

    if-ne v5, v4, :cond_17

    .line 729
    invoke-virtual {v6}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 731
    invoke-static {v2, v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetPersonalLayerIdDic(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_5

    .line 736
    :cond_14
    invoke-virtual {v6}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "system:teacher_personal"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 739
    invoke-virtual {v6}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/nt/NtPageController;->getUserIdFromTeacherPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 741
    invoke-static {v2, v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetTeacherPersonalLayerIdDic(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_5

    .line 751
    :cond_15
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetPersonalLayerIdDic(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_16
    :goto_5
    move v2, v4

    goto :goto_7

    :cond_17
    :goto_6
    const/4 v2, 0x0

    .line 759
    :goto_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 760
    const-string v6, "visibleCommonLayer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v2, "visiblePersonalLayerIdSuffixDic"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_18

    move-object/from16 v3, p0

    .line 763
    :cond_18
    const-string v0, "userId"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isTeacherPersonalLayer()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_8

    :cond_19
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "visibleTeacherPersonalLayer"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string v0, "visibleTeacherPersonalLayerIdSuffixDic"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5
.end method

.method private static outputTargetTeacherPersonalLayerIdDic(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 798
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 801
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "visibleTeacherPersonalLayerId"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static setSchoolPageType(ILcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 1610
    const-string v0, "forSchoolPageType"

    invoke-interface {p1, v0, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public static setSchoolPageTypeDefaultValue(I)V
    .locals 2

    .line 1625
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 1626
    const-string v1, "forSchoolDefaultSchoolPageType"

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method public static setSchoolPageTypeDefaultValue(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 1601
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeDefaultValue()I

    move-result v0

    .line 1602
    const-string v1, "forSchoolPageType"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public static shuffleArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method public static sortUserArray(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1305
    const-string v7, "class-number"

    invoke-static {v5, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1306
    const-string v8, "login-name"

    invoke-static {v5, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 1307
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v4, v6

    :cond_1
    if-eqz v7, :cond_4

    .line 1312
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 1315
    :cond_2
    invoke-static {v7}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1317
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1319
    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1313
    :cond_4
    :goto_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1325
    :cond_5
    new-instance v3, Lcom/metamoji/forSchool/ScSchoolUtils$NumClassNumberComparator;

    invoke-direct {v3}, Lcom/metamoji/forSchool/ScSchoolUtils$NumClassNumberComparator;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1326
    new-instance v3, Lcom/metamoji/forSchool/ScSchoolUtils$StrClassNumberComparator;

    invoke-direct {v3}, Lcom/metamoji/forSchool/ScSchoolUtils$StrClassNumberComparator;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1328
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 1329
    const-string v3, "MMJAppMonitorSortOrder"

    const-string v5, "userid"

    invoke-static {v3, v5}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1330
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v4, v6

    :cond_6
    if-eqz v4, :cond_7

    .line 1335
    new-instance v3, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator;

    invoke-direct {v3}, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1337
    :cond_7
    new-instance v3, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator;

    invoke-direct {v3}, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1340
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1342
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1343
    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1344
    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
