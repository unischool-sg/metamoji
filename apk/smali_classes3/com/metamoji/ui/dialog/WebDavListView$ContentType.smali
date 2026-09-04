.class public final enum Lcom/metamoji/ui/dialog/WebDavListView$ContentType;
.super Ljava/lang/Enum;
.source "WebDavListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/WebDavListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/dialog/WebDavListView$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

.field public static final enum Back:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

.field public static final enum Document:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

.field public static final enum Folder:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/dialog/WebDavListView$ContentType;
    .locals 3

    .line 29
    sget-object v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Folder:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    sget-object v1, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Document:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    sget-object v2, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Back:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    const-string v1, "Folder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Folder:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    new-instance v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    const-string v1, "Document"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Document:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    new-instance v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    const-string v1, "Back"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Back:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    invoke-static {}, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->$values()[Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->$VALUES:[Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/dialog/WebDavListView$ContentType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    const-class v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/dialog/WebDavListView$ContentType;
    .locals 1

    .line 29
    sget-object v0, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->$VALUES:[Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    return-object v0
.end method
