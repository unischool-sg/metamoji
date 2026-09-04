.class public final Lcom/metamoji/video/AmvFrameSelectorView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AmvFrameSelectorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvFrameSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvFrameSelectorView$SavedState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0012\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0006\u0010\nJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFrameSelectorView$SavedState;",
        "Landroid/view/View$BaseSavedState;",
        "superState",
        "Landroid/os/Parcelable;",
        "savedData",
        "Lcom/metamoji/video/AmvFrameSelectorView$SavedData;",
        "<init>",
        "(Landroid/os/Parcelable;Lcom/metamoji/video/AmvFrameSelectorView$SavedData;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "data",
        "getData",
        "()Lcom/metamoji/video/AmvFrameSelectorView$SavedData;",
        "writeToParcel",
        "",
        "flags",
        "",
        "Companion",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/video/AmvFrameSelectorView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/metamoji/video/AmvFrameSelectorView$SavedState$Companion;


# instance fields
.field private final data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$SavedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvFrameSelectorView$SavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;->Companion:Lcom/metamoji/video/AmvFrameSelectorView$SavedState$Companion;

    .line 357
    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$SavedState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/metamoji/video/AmvFrameSelectorView$SavedState$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 345
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 347
    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvFrameSelectorView$SavedData;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/metamoji/video/AmvFrameSelectorView$SavedData;)V
    .locals 1

    const-string v0, "savedData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 339
    iput-object p2, p0, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/metamoji/video/AmvFrameSelectorView$SavedData;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object p2, p0, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/metamoji/video/AmvFrameSelectorView$SavedData;->writeToParcel(Landroid/os/Parcel;)V

    :cond_0
    return-void
.end method
