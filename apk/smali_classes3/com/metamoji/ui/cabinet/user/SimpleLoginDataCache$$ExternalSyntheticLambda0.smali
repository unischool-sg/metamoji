.class public final synthetic Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cm/CmTaskManager;

.field public final synthetic f$1:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

.field public final synthetic f$2:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/cm/CmTaskManager;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/cm/CmTaskManager;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->loadInfo$lambda$1(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)V

    return-void
.end method
