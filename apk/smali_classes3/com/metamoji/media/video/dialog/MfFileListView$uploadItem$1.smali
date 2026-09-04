.class final synthetic Lcom/metamoji/media/video/dialog/MfFileListView$uploadItem$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MfFileListView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListView;->uploadItem(Lcom/metamoji/media/video/dialog/LocalFileItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
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

    const-class v3, Lcom/metamoji/media/video/dialog/MfFileListView;

    const-string v5, "onItemUploaded(Lcom/metamoji/media/video/dialog/IFileItem;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onItemUploaded"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1255
    check-cast p1, Lcom/metamoji/media/video/dialog/IFileItem;

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListView$uploadItem$1;->invoke(Lcom/metamoji/media/video/dialog/IFileItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/media/video/dialog/IFileItem;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView$uploadItem$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/media/video/dialog/MfFileListView;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListView;->access$onItemUploaded(Lcom/metamoji/media/video/dialog/MfFileListView;Lcom/metamoji/media/video/dialog/IFileItem;)V

    return-void
.end method
