.class public final synthetic Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cm/CmTaskManager;

.field public final synthetic f$1:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

.field public final synthetic f$2:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/cm/CmTaskManager;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;->f$2:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/cm/CmTaskManager;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;->f$2:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->checkParams$lambda$1(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V

    return-void
.end method
