.class public Lcom/metamoji/un/text/model/UnitStyles;
.super Ljava/lang/Object;
.source "UnitStyles.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/un/text/model/UnitStyles;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bgColor:Ljava/lang/Integer;

.field public charColor:Ljava/lang/Integer;

.field public fontFamilyName:Ljava/lang/String;

.field public fontSize:Ljava/lang/Float;

.field public lineHeight:Ljava/lang/Float;

.field public paddingRect:Lcom/metamoji/cm/EdgeInsets;

.field public ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

.field public unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public verticalWriting:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/metamoji/un/text/model/UnitStyles$1;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/UnitStyles$1;-><init>()V

    sput-object v0, Lcom/metamoji/un/text/model/UnitStyles;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 71
    const-class v1, Lcom/metamoji/cm/EdgeInsets;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/EdgeInsets;

    iput-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createBorderStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 76
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/un/text/model/UnitStyles-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/UnitStyles;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 29
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 45
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 46
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 47
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 48
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 49
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-static {p2}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 51
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-static {p2}, Lcom/metamoji/un/text/DataUtil;->createTextUnitBorderStyleString(Lcom/metamoji/un/text/model/UnitBorderStyle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 52
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 53
    sget-boolean p2, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
