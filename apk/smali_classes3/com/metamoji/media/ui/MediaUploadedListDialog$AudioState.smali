.class final enum Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;
.super Ljava/lang/Enum;
.source "MediaUploadedListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AudioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

.field public static final enum PAUSED:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

.field public static final enum PLAYING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

.field public static final enum PREPARING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

.field public static final enum RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;
    .locals 4

    .line 408
    sget-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PREPARING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PAUSED:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PLAYING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 409
    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 410
    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const-string v1, "PREPARING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PREPARING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 411
    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const-string v1, "PAUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PAUSED:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 412
    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const-string v1, "PLAYING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PLAYING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 408
    invoke-static {}, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->$values()[Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->$VALUES:[Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 408
    const-class v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;
    .locals 1

    .line 408
    sget-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->$VALUES:[Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    invoke-virtual {v0}, [Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    return-object v0
.end method
