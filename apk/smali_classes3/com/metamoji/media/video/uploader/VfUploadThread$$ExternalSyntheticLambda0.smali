.class public final synthetic Lcom/metamoji/media/video/uploader/VfUploadThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/uploader/VfUploadThread;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadThread$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/uploader/VfUploadThread;

    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploadThread$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/uploader/VfUploadThread;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadThread$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadThread;->start$lambda$0(Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
