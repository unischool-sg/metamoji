.class public final enum Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;
.super Ljava/lang/Enum;
.source "DrCollaborationTarget.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

.field public static final enum EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

.field public static final enum OTHERS:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;
    .locals 3

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    sget-object v1, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->OTHERS:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    sget-object v2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    const-string v1, "OTHERS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->OTHERS:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    const-string v1, "EVERYONE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    .line 8
    invoke-static {}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->$values()[Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->$VALUES:[Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 8
    const-class v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->$VALUES:[Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->_value:I

    return v0
.end method
