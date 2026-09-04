.class public final enum Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;
.super Ljava/lang/Enum;
.source "NtEditorWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtEditorWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageStyleTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

.field public static final enum After:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

.field public static final enum All:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

.field public static final enum Cover:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

.field public static final enum Current:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

.field public static final enum SelectedPages:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;
    .locals 5

    .line 3202
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->All:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->Current:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->After:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->Cover:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->SelectedPages:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 3203
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->All:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    .line 3204
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    const-string v1, "Current"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->Current:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    .line 3205
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    const-string v1, "After"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->After:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    .line 3206
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    const-string v1, "Cover"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->Cover:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    .line 3207
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    const-string v1, "SelectedPages"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->SelectedPages:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    .line 3202
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->$values()[Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->$VALUES:[Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

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

    .line 3202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3202
    const-class v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;
    .locals 1

    .line 3202
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->$VALUES:[Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    return-object v0
.end method
