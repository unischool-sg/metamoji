.class public final synthetic Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;

    check-cast p1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->execute$lambda$0(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
