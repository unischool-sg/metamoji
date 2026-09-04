.class public final Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;
.super Ljava/lang/Object;
.source "MfListModeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfListModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SortParams"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;",
        "",
        "sortKey",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "sortOrder",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "<init>",
        "(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V",
        "getSortKey",
        "()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "getSortOrder",
        "()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field private final sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V
    .locals 1

    const-string/jumbo v0, "sortKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sortOrder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;ILjava/lang/Object;)Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->copy(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object v0
.end method

.method public final component2()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-object v0
.end method

.method public final copy(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;
    .locals 1

    const-string/jumbo v0, "sortKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sortOrder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;-><init>(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    iget-object v3, p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    iget-object p1, p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object v0
.end method

.method public final getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortKey:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->sortOrder:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SortParams(sortKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sortOrder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
