.class public Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "NtTextUnitInputStyleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtTextUnitInputStyleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fontBold:Z

.field public fontItalic:Z

.field public fontName:Ljava/lang/String;

.field public fontSize:F

.field public fontStrikeThrough:Z

.field public fontUnderline:Z

.field public isFontNameDefault:Z

.field public isFontSizeDefault:Z

.field public isTextColorDefault:Z

.field public modifiedFlag:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation
.end field

.field public selectedStateTextKind:I

.field public textBackgroundColor:Ljava/lang/Integer;

.field public textColor:Ljava/lang/Integer;

.field public useTextBackgroundColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 392
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState$1;

    invoke-direct {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 335
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->enumSetFromInt(I)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->modifiedFlag:Ljava/util/EnumSet;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontSize:F

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isFontSizeDefault:Z

    .line 340
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->textColor:Ljava/lang/Integer;

    .line 341
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isTextColorDefault:Z

    .line 342
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontBold:Z

    .line 343
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontItalic:Z

    .line 344
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontUnderline:Z

    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontStrikeThrough:Z

    .line 346
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->textBackgroundColor:Ljava/lang/Integer;

    .line 347
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->useTextBackgroundColor:Z

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->selectedStateTextKind:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontName:Ljava/lang/String;

    .line 350
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isFontNameDefault:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/metamoji/nt/NtTextUnitInputStyleBar;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 356
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->modifiedFlag:Ljava/util/EnumSet;

    .line 357
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontSize(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)F

    move-result p1

    iput p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontSize:F

    .line 358
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_isFontSizeDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isFontSizeDefault:Z

    .line 359
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->textColor:Ljava/lang/Integer;

    .line 360
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_isTextColorDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isTextColorDefault:Z

    .line 361
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontBold(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontBold:Z

    .line 362
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontItalic(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontItalic:Z

    .line 363
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontUnderline(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontUnderline:Z

    .line 364
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontStrikeThrough(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontStrikeThrough:Z

    .line 365
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->textBackgroundColor:Ljava/lang/Integer;

    .line 366
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_useTextBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->useTextBackgroundColor:Z

    .line 367
    invoke-virtual {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->getSelectedStateTextKindValue()I

    move-result p1

    iput p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->selectedStateTextKind:I

    .line 368
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontName(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontName:Ljava/lang/String;

    .line 369
    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_isFontNameDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isFontNameDefault:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 374
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 376
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->modifiedFlag:Ljava/util/EnumSet;

    invoke-static {p2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->enumSetToInt(Ljava/util/EnumSet;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 378
    iget-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isFontSizeDefault:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 379
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->textColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 380
    iget-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isTextColorDefault:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 381
    iget-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontBold:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 382
    iget-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontItalic:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 383
    iget-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontUnderline:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 384
    iget-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontStrikeThrough:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 385
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->textBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 386
    iget-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->useTextBackgroundColor:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 387
    iget p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->selectedStateTextKind:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isFontNameDefault:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
