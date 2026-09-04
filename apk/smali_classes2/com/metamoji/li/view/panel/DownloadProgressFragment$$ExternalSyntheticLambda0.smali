.class public final synthetic Lcom/metamoji/li/view/panel/DownloadProgressFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/model/LoginViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/view/panel/DownloadProgressFragment$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/model/LoginViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/view/panel/DownloadProgressFragment$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/model/LoginViewModel;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->onCreateView$lambda$2$lambda$1$lambda$0(Lcom/metamoji/li/model/LoginViewModel;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
