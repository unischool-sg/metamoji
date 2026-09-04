.class final synthetic Lcom/metamoji/un/video/UnVideoUnit$init$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UnVideoUnit.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/UnVideoUnit;->init(Lcom/metamoji/df/controller/ControllerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/String;",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "Lkotlin/Unit;",
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

    const-class v3, Lcom/metamoji/un/video/UnVideoUnit;

    const-string v5, "onVideoUploadStateChanged(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V"

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-string v4, "onVideoUploadStateChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 406
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    check-cast p3, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoUnit$init$2;->invoke(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$init$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/un/video/UnVideoUnit;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoUnit;->access$onVideoUploadStateChanged(Lcom/metamoji/un/video/UnVideoUnit;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    return-void
.end method
