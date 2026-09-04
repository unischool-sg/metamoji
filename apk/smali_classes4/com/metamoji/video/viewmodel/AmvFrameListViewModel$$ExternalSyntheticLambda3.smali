.class public final synthetic Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;

    invoke-static {v0, p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->setObserver$lambda$4(Lkotlin/jvm/functions/Function1;Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V

    return-void
.end method
