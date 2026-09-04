.class public final Lcom/metamoji/video/AmvSlider$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AmvSlider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvSlider$SavedState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0013\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/video/AmvSlider$SavedState;",
        "Landroid/view/View$BaseSavedState;",
        "superState",
        "Landroid/os/Parcelable;",
        "<init>",
        "(Landroid/os/Parcelable;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "totalLength",
        "",
        "getTotalLength",
        "()J",
        "setTotalLength",
        "(J)V",
        "currentPosition",
        "getCurrentPosition",
        "setCurrentPosition",
        "trimStartPosition",
        "getTrimStartPosition",
        "setTrimStartPosition",
        "trimEndPosition",
        "getTrimEndPosition",
        "setTrimEndPosition",
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
            "Lcom/metamoji/video/AmvSlider$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/metamoji/video/AmvSlider$SavedState$Companion;


# instance fields
.field private currentPosition:J

.field private totalLength:J

.field private trimEndPosition:J

.field private trimStartPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvSlider$SavedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvSlider$SavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvSlider$SavedState;->Companion:Lcom/metamoji/video/AmvSlider$SavedState$Companion;

    .line 840
    new-instance v0, Lcom/metamoji/video/AmvSlider$SavedState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/metamoji/video/AmvSlider$SavedState$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/metamoji/video/AmvSlider$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 822
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->totalLength:J

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->trimStartPosition:J

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->trimEndPosition:J

    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->currentPosition:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvSlider$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final getCurrentPosition()J
    .locals 2

    .line 810
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->currentPosition:J

    return-wide v0
.end method

.method public final getTotalLength()J
    .locals 2

    .line 809
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->totalLength:J

    return-wide v0
.end method

.method public final getTrimEndPosition()J
    .locals 2

    .line 812
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->trimEndPosition:J

    return-wide v0
.end method

.method public final getTrimStartPosition()J
    .locals 2

    .line 811
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->trimStartPosition:J

    return-wide v0
.end method

.method public final setCurrentPosition(J)V
    .locals 0

    .line 810
    iput-wide p1, p0, Lcom/metamoji/video/AmvSlider$SavedState;->currentPosition:J

    return-void
.end method

.method public final setTotalLength(J)V
    .locals 0

    .line 809
    iput-wide p1, p0, Lcom/metamoji/video/AmvSlider$SavedState;->totalLength:J

    return-void
.end method

.method public final setTrimEndPosition(J)V
    .locals 0

    .line 812
    iput-wide p1, p0, Lcom/metamoji/video/AmvSlider$SavedState;->trimEndPosition:J

    return-void
.end method

.method public final setTrimStartPosition(J)V
    .locals 0

    .line 811
    iput-wide p1, p0, Lcom/metamoji/video/AmvSlider$SavedState;->trimStartPosition:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 831
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->totalLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 832
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->trimStartPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 833
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->trimEndPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 834
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider$SavedState;->currentPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
