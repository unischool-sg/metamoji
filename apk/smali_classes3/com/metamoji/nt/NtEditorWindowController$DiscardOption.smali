.class public final enum Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;
.super Ljava/lang/Enum;
.source "NtEditorWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtEditorWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiscardOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

.field public static final enum Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

.field public static final enum No:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

.field public static final enum Yes:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;
    .locals 3

    .line 2656
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Yes:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->No:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2657
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    const-string v1, "Auto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    .line 2658
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    const-string v1, "Yes"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Yes:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    .line 2659
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    const-string v1, "No"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->No:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    .line 2656
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->$values()[Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->$VALUES:[Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

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

    .line 2656
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2656
    const-class v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;
    .locals 1

    .line 2656
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->$VALUES:[Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    return-object v0
.end method
