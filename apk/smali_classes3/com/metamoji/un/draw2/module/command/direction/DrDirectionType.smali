.class public final enum Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
.super Ljava/lang/Enum;
.source "DrDirectionType.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum APPLY_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum BIND_UNBIND:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum CHANGE_ORDER:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum CHANGE_STYLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum DESELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum GROUP:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum RESIZE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum ROTATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum SCALE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum SELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum SET_CONTENT_PROPERTIES:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum SET_EXTRA_HANDLE_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum SET_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

.field public static final enum TRANSLATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 19

    .line 8
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->NONE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v2, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->GROUP:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v5, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->DESELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->TRANSLATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v7, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->RESIZE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v8, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SCALE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v9, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ROTATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v11, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_EXTRA_HANDLE_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v12, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v13, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_STYLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v14, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_ORDER:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v15, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->APPLY_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v16, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v17, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_CONTENT_PROPERTIES:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    sget-object v18, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->BIND_UNBIND:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    filled-new-array/range {v1 .. v18}, [Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->NONE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "ADD_REMOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "GROUP"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->GROUP:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 13
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "SELECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 14
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "DESELECT"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->DESELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 15
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "TRANSLATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->TRANSLATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 16
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "RESIZE"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->RESIZE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 17
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "SCALE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SCALE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 18
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "ROTATE"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ROTATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 19
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "SET_VARIATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 20
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "SET_EXTRA_HANDLE_VARIATION"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_EXTRA_HANDLE_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 21
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "ERASE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 22
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "CHANGE_STYLE"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_STYLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 23
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "CHANGE_ORDER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_ORDER:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 24
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "APPLY_VARIATION"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->APPLY_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 25
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "EDIT_EXTRA_HANDLE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 26
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const-string v1, "SET_CONTENT_PROPERTIES"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_CONTENT_PROPERTIES:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 28
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    const/16 v1, 0x11

    const/16 v2, 0x1e

    const-string v3, "BIND_UNBIND"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->BIND_UNBIND:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 8
    invoke-static {}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->$values()[Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
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
    const-class v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->_value:I

    return v0
.end method
