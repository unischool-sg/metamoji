.class final synthetic Lcom/metamoji/media/video/uploader/VfUploader$initialize$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "VfUploader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/uploader/VfUploader;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/metamoji/media/video/uploader/VfUploadThread;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/metamoji/media/video/uploader/VfUploader;

    const-string v5, "executeUpload(Lcom/metamoji/media/video/uploader/VfUploadThread;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "executeUpload"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/metamoji/media/video/uploader/VfUploadThread;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$initialize$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploader;->access$executeUpload(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadThread;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/metamoji/media/video/uploader/VfUploadThread;

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/uploader/VfUploader$initialize$1;->invoke(Lcom/metamoji/media/video/uploader/VfUploadThread;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
