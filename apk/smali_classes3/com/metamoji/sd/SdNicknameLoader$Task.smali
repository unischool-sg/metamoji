.class Lcom/metamoji/sd/SdNicknameLoader$Task;
.super Ljava/lang/Object;
.source "SdNicknameLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/SdNicknameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private _createUser:Ljava/lang/String;

.field private _createUserId:Ljava/lang/String;

.field private _createUserView:Landroid/widget/TextView;

.field private _driveId:Ljava/lang/String;

.field private _updateUser:Ljava/lang/String;

.field private _updateUserId:Ljava/lang/String;

.field private _updateUserView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/metamoji/sd/SdNicknameLoader;


# direct methods
.method static bridge synthetic -$$Nest$fget_createUser(Lcom/metamoji/sd/SdNicknameLoader$Task;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUser:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_createUserView(Lcom/metamoji/sd/SdNicknameLoader$Task;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUserView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_updateUser(Lcom/metamoji/sd/SdNicknameLoader$Task;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUser:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_updateUserView(Lcom/metamoji/sd/SdNicknameLoader$Task;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUserView:Landroid/widget/TextView;

    return-object p0
.end method

.method constructor <init>(Lcom/metamoji/sd/SdNicknameLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->this$0:Lcom/metamoji/sd/SdNicknameLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_driveId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUserId:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUserId:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUserView:Landroid/widget/TextView;

    .line 45
    iput-object p6, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUserView:Landroid/widget/TextView;

    .line 46
    const-string p1, ""

    iput-object p1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUser:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUser:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_driveId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 55
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->normalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->updateNormalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_9

    .line 66
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->nonMemberNameMapCache()Ljava/util/Map;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v4, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUserId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    .line 71
    iget-object v5, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUserId:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 70
    invoke-static {v1, v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUser:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {v2, v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    .line 74
    iget-object v5, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUserId:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 72
    invoke-static {v2, v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUser:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :goto_0
    iget-object v4, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUserId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    .line 79
    iget-object v5, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUserId:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 78
    invoke-static {v1, v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUser:Ljava/lang/String;

    goto :goto_1

    .line 79
    :cond_5
    invoke-static {v2, v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    .line 82
    iget-object v4, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUserId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 80
    invoke-static {v2, v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUser:Ljava/lang/String;

    goto :goto_1

    .line 82
    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 86
    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->updateNonMemberNameMapCache(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    iget-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_createUser:Ljava/lang/String;

    .line 92
    :cond_7
    iget-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 93
    iget-object v1, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sd/SdNicknameLoader$Task;->_updateUser:Ljava/lang/String;

    .line 97
    :cond_8
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/sd/SdNicknameLoader$Task$1;

    invoke-direct {v1, p0}, Lcom/metamoji/sd/SdNicknameLoader$Task$1;-><init>(Lcom/metamoji/sd/SdNicknameLoader$Task;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_2
    return-void
.end method
