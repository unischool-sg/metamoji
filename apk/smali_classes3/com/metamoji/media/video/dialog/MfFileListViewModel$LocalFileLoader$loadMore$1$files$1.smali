.class final synthetic Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$files$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MfFileListView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/media/video/dialog/LocalFileItem;",
        "Lcom/metamoji/media/video/dialog/LocalFileItem;",
        "Ljava/lang/Integer;",
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

    const-class v3, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    const-string v5, "compare(Lcom/metamoji/media/video/dialog/LocalFileItem;Lcom/metamoji/media/video/dialog/LocalFileItem;)I"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "compare"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/metamoji/media/video/dialog/LocalFileItem;Lcom/metamoji/media/video/dialog/LocalFileItem;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$files$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->compare(Lcom/metamoji/media/video/dialog/LocalFileItem;Lcom/metamoji/media/video/dialog/LocalFileItem;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 564
    check-cast p1, Lcom/metamoji/media/video/dialog/LocalFileItem;

    check-cast p2, Lcom/metamoji/media/video/dialog/LocalFileItem;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$files$1;->invoke(Lcom/metamoji/media/video/dialog/LocalFileItem;Lcom/metamoji/media/video/dialog/LocalFileItem;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
