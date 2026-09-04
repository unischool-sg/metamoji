.class Lcom/metamoji/ui/TextUnitEdit$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TextUnitEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/TextUnitEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/TextUnitEdit$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public textModelId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$SavedState$1;

    invoke-direct {v0}, Lcom/metamoji/ui/TextUnitEdit$SavedState$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$SavedState;->textModelId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/ui/TextUnitEdit-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/TextUnitEdit$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 201
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    iget p2, p0, Lcom/metamoji/ui/TextUnitEdit$SavedState;->textModelId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
