.class Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;
.super Ljava/lang/Object;
.source "UiScrollView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerParcelable"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field _scale:F

.field _scrollX:I

.field _scrollY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 438
    new-instance v0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable$1;

    invoke-direct {v0}, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollX:I

    .line 459
    iput v0, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollY:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 460
    iput v0, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scale:F

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p1, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollX:I

    .line 465
    iput p2, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollY:I

    .line 466
    iput p3, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scale:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollX:I

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollY:I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scale:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/ui/UiScrollView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 470
    iget v0, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scale:F

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollY:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 433
    iget p2, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget p2, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scrollY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget p2, p0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->_scale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
