.class final synthetic Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MfFileItemDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/video/AmvDLTempFile;",
        "Ljava/io/File;",
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

    const-class v3, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    const-string v5, "onDownloaded(Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "onDownloaded"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, Lcom/metamoji/video/AmvDLTempFile;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1$1;->invoke(Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-static {v0, p1, p2}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->access$onDownloaded(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V

    return-void
.end method
