.class public final synthetic Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

.field public final synthetic f$1:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->loadInfo$lambda$1$lambda$0(Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;)V

    return-void
.end method
