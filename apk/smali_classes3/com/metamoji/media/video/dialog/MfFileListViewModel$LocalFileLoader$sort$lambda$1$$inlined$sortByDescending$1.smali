.class public final Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$sort$lambda$1$$inlined$sortByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->sort()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader\n*L\n1#1,328:1\n535#2:329\n*E\n"
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


# instance fields
.field final synthetic $receiver$inlined:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$sort$lambda$1$$inlined$sortByDescending$1;->$receiver$inlined:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 121
    check-cast p2, Lcom/metamoji/media/video/dialog/IFileItem;

    .line 329
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$sort$lambda$1$$inlined$sortByDescending$1;->$receiver$inlined:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-static {v0, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->access$valueSelector(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/media/video/dialog/IFileItem;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 121
    check-cast p2, Ljava/lang/Comparable;

    check-cast p1, Lcom/metamoji/media/video/dialog/IFileItem;

    .line 329
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$sort$lambda$1$$inlined$sortByDescending$1;->$receiver$inlined:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->access$valueSelector(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/media/video/dialog/IFileItem;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 121
    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
