.class public final synthetic Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    check-cast p1, Lcom/metamoji/lib/utils/UtAsyncTask;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->extractFrame$lambda$3$lambda$2(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;Lcom/metamoji/lib/utils/UtAsyncTask;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
