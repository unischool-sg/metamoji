.class public final enum Lcom/metamoji/noteanytime/EditorActivity$RequestCode;
.super Ljava/lang/Enum;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/noteanytime/EditorActivity$RequestCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

.field public static final enum AddWebPage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

.field public static final enum DocThumbnailImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

.field public static final enum EditImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

.field public static final enum ExtensionKitCallGooglePlay:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

.field public static final enum GetImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

.field public static final enum InAppPurchase:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

.field public static final enum Unknown:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

.field public static final enum UpdateWebPage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/noteanytime/EditorActivity$RequestCode;
    .locals 8

    .line 4340
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->EditImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    sget-object v1, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->GetImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    sget-object v2, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->InAppPurchase:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    sget-object v3, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->AddWebPage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    sget-object v4, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->UpdateWebPage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    sget-object v5, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->DocThumbnailImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    sget-object v6, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->ExtensionKitCallGooglePlay:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    sget-object v7, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->Unknown:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    filled-new-array/range {v0 .. v7}, [Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 4342
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    const-string v1, "EditImage"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->EditImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 4344
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    const-string v1, "GetImage"

    const/4 v2, 0x1

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->GetImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 4345
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    const-string v1, "InAppPurchase"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->InAppPurchase:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 4346
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    const-string v1, "AddWebPage"

    const/4 v3, 0x3

    const/4 v5, 0x7

    invoke-direct {v0, v1, v3, v5}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->AddWebPage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 4347
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    const/4 v1, 0x4

    const/16 v3, 0x8

    const-string v6, "UpdateWebPage"

    invoke-direct {v0, v6, v1, v3}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->UpdateWebPage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 4348
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    const-string v1, "DocThumbnailImage"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v4, v3}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->DocThumbnailImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 4350
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    const-string v1, "ExtensionKitCallGooglePlay"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->ExtensionKitCallGooglePlay:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 4355
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    const-string v1, "Unknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->Unknown:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 4340
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->$values()[Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->$VALUES:[Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

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

    .line 4359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4360
    iput p3, p0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/noteanytime/EditorActivity$RequestCode;
    .locals 5

    .line 4368
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->values()[Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4369
    invoke-virtual {v3}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4373
    :cond_1
    sget-object p0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->Unknown:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/noteanytime/EditorActivity$RequestCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4340
    const-class v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/noteanytime/EditorActivity$RequestCode;
    .locals 1

    .line 4340
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->$VALUES:[Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    invoke-virtual {v0}, [Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 4364
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->_intValue:I

    return v0
.end method
