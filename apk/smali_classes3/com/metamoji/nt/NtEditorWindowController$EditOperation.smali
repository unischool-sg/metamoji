.class public final enum Lcom/metamoji/nt/NtEditorWindowController$EditOperation;
.super Ljava/lang/Enum;
.source "NtEditorWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtEditorWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtEditorWindowController$EditOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum Collaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum CopyForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum DeliverCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum DeliverCollaborizeByDrop:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum FromHistory:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum Import:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum ImportAudioNew:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum New:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum PDF:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum Reload:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum Restore:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum SubmitByStudent:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum Template:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum TemplateForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field public static final enum UncollaborizeForCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtEditorWindowController$EditOperation;
    .locals 18

    .line 2634
    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->New:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Template:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Reload:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v6, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Import:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v7, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->PDF:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v8, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Restore:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v9, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Collaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v10, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->UncollaborizeForCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v11, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->FromHistory:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v12, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v13, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborizeByDrop:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v14, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ImportAudioNew:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v15, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->TemplateForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v16, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->CopyForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v17, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->SubmitByStudent:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    filled-new-array/range {v1 .. v17}, [Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2635
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "New"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->New:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2636
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "Copy"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2637
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "Template"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Template:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2638
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "Edit"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2639
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "Reload"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Reload:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2640
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "Import"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Import:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2641
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "PDF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->PDF:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2642
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "Restore"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Restore:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2643
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "Collaborize"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Collaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2644
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "UncollaborizeForCollaborize"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->UncollaborizeForCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2645
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "FromHistory"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->FromHistory:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2647
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "DeliverCollaborize"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2648
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "DeliverCollaborizeByDrop"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborizeByDrop:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2649
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "ImportAudioNew"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ImportAudioNew:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2651
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "TemplateForBlankPaper"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->TemplateForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2652
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "CopyForBlankPaper"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->CopyForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2653
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string v1, "SubmitByStudent"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->SubmitByStudent:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 2634
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->$values()[Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->$VALUES:[Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

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

    .line 2634
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtEditorWindowController$EditOperation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2634
    const-class v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtEditorWindowController$EditOperation;
    .locals 1

    .line 2634
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->$VALUES:[Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    return-object v0
.end method
