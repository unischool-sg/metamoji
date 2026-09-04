.class public final Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;
.super Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;
.source "ObservableList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveEventData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;",
        "sender",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "from",
        "",
        "to",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;II)V",
        "getFrom",
        "()I",
        "getTo",
        "utils"
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
.field private final from:I

.field private final to:I


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;II)V"
        }
    .end annotation

    const-string/jumbo v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->MOVE:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;)V

    .line 41
    iput p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;->from:I

    iput p3, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;->to:I

    return-void
.end method


# virtual methods
.method public final getFrom()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;->from:I

    return v0
.end method

.method public final getTo()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;->to:I

    return v0
.end method
