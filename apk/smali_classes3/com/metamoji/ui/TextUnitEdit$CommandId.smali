.class final enum Lcom/metamoji/ui/TextUnitEdit$CommandId;
.super Ljava/lang/Enum;
.source "TextUnitEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/TextUnitEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/TextUnitEdit$CommandId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/TextUnitEdit$CommandId;

.field public static final enum Copy:Lcom/metamoji/ui/TextUnitEdit$CommandId;

.field public static final enum Cut:Lcom/metamoji/ui/TextUnitEdit$CommandId;

.field public static final enum Delete:Lcom/metamoji/ui/TextUnitEdit$CommandId;

.field public static final enum Paste:Lcom/metamoji/ui/TextUnitEdit$CommandId;

.field public static final enum Select:Lcom/metamoji/ui/TextUnitEdit$CommandId;

.field public static final enum SelectAll:Lcom/metamoji/ui/TextUnitEdit$CommandId;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/TextUnitEdit$CommandId;
    .locals 6

    .line 684
    sget-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Copy:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget-object v1, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Cut:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget-object v2, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Paste:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget-object v3, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Delete:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget-object v4, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Select:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    sget-object v5, Lcom/metamoji/ui/TextUnitEdit$CommandId;->SelectAll:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/ui/TextUnitEdit$CommandId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 685
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    const-string v1, "Copy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/TextUnitEdit$CommandId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Copy:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    .line 686
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    const-string v1, "Cut"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/TextUnitEdit$CommandId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Cut:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    .line 687
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    const-string v1, "Paste"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/TextUnitEdit$CommandId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Paste:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    .line 688
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    const-string v1, "Delete"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/TextUnitEdit$CommandId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Delete:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    .line 689
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    const-string v1, "Select"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/TextUnitEdit$CommandId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->Select:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    .line 690
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    const-string v1, "SelectAll"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/TextUnitEdit$CommandId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->SelectAll:Lcom/metamoji/ui/TextUnitEdit$CommandId;

    .line 684
    invoke-static {}, Lcom/metamoji/ui/TextUnitEdit$CommandId;->$values()[Lcom/metamoji/ui/TextUnitEdit$CommandId;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->$VALUES:[Lcom/metamoji/ui/TextUnitEdit$CommandId;

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

    .line 684
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/TextUnitEdit$CommandId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 684
    const-class v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/TextUnitEdit$CommandId;
    .locals 1

    .line 684
    sget-object v0, Lcom/metamoji/ui/TextUnitEdit$CommandId;->$VALUES:[Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-virtual {v0}, [Lcom/metamoji/ui/TextUnitEdit$CommandId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/TextUnitEdit$CommandId;

    return-object v0
.end method
