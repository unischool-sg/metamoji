.class public final enum Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
.super Ljava/lang/Enum;
.source "NtDocumentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtDocumentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocThumbnailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

.field public static final enum Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

.field public static final enum User:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
    .locals 2

    .line 43
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    sget-object v1, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->User:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    filled-new-array {v0, v1}, [Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    const-string v1, "Auto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    .line 46
    new-instance v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    const-string v1, "User"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->User:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    .line 43
    invoke-static {}, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->$values()[Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->$VALUES:[Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
    .locals 5

    .line 58
    invoke-static {}, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->values()[Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 59
    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    const-string v0, "cannot cast int to NtDocumentSettings.DocThumbnailType"

    invoke-direct {p0, v0}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    const-class v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
    .locals 1

    .line 43
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->$VALUES:[Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->_intValue:I

    return v0
.end method
