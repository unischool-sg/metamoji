.class final Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;
.super Ljava/lang/Object;
.source "UtSimpleManipulationTarget.kt"

# interfaces
.implements Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$IUtManipulationTargetCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Callbacks"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J@\u0010\u0014\u001a\u00020\u001526\u0010\u0016\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0005H\u0016J@\u0010\u0017\u001a\u00020\u001526\u0010\u0016\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0005H\u0016RL\u0010\u0004\u001a4\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010RL\u0010\u0011\u001a4\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;",
        "Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$IUtManipulationTargetCallbacks;",
        "<init>",
        "()V",
        "changePageProc",
        "Lkotlin/Function2;",
        "Lio/github/toyota32k/utils/gesture/Orientation;",
        "Lkotlin/ParameterName;",
        "name",
        "orientation",
        "Lio/github/toyota32k/utils/gesture/Direction;",
        "dir",
        "",
        "getChangePageProc",
        "()Lkotlin/jvm/functions/Function2;",
        "setChangePageProc",
        "(Lkotlin/jvm/functions/Function2;)V",
        "hasNextPageProc",
        "getHasNextPageProc",
        "setHasNextPageProc",
        "changePage",
        "",
        "fn",
        "hasNextPage",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private changePageProc:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "-",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasNextPageProc:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "-",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changePage(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "-",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;->changePageProc:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final getChangePageProc()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;->changePageProc:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getHasNextPageProc()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;->hasNextPageProc:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public hasNextPage(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "-",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;->hasNextPageProc:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setChangePageProc(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "-",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;->changePageProc:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setHasNextPageProc(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "-",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;->hasNextPageProc:Lkotlin/jvm/functions/Function2;

    return-void
.end method
