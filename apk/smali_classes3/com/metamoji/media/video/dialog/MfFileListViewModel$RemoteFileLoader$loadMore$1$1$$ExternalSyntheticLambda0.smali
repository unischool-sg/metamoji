.class public final synthetic Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$1;->invokeSuspend$lambda$0(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Ljava/util/List;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
