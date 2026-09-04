.class public final Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;
.super Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;
.source "ObservableList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertEventData"
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\'\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;",
        "sender",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "position",
        "",
        "range",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;II)V",
        "getPosition",
        "()I",
        "getRange",
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
.field private final position:I

.field private final range:I


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

    .line 38
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->INSERT:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;)V

    .line 37
    iput p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->position:I

    iput p3, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->range:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;II)V

    return-void
.end method


# virtual methods
.method public final getPosition()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->position:I

    return v0
.end method

.method public final getRange()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;->range:I

    return v0
.end method
