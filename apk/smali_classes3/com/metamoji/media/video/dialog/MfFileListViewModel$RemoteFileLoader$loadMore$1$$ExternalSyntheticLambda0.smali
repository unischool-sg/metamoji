.class public final synthetic Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

.field public final synthetic f$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    check-cast p1, Lcom/metamoji/media/video/dialog/RemoteFileItem;

    invoke-static {v0, v1, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->invokeSuspend$lambda$2(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/RemoteFileItem;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
