.class public final enum Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;
.super Ljava/lang/Enum;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuiltInButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;",
        "",
        "string",
        "Lcom/metamoji/lib/dialog/UtStandardString;",
        "positive",
        "",
        "blueColor",
        "<init>",
        "(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V",
        "getString",
        "()Lcom/metamoji/lib/dialog/UtStandardString;",
        "getPositive",
        "()Z",
        "getBlueColor",
        "OK",
        "DONE",
        "CLOSE",
        "CANCEL",
        "BACK",
        "CLOSE_LEFT",
        "NONE",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

.field public static final enum BACK:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

.field public static final enum CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

.field public static final enum CLOSE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

.field public static final enum CLOSE_LEFT:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

.field public static final enum DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

.field public static final enum NONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

.field public static final enum OK:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;


# instance fields
.field private final blueColor:Z

.field private final positive:Z

.field private final string:Lcom/metamoji/lib/dialog/UtStandardString;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;
    .locals 7

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->OK:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CLOSE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v3, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v4, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->BACK:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v5, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CLOSE_LEFT:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v6, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->NONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 584
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v3, Lcom/metamoji/lib/dialog/UtStandardString;->OK:Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;-><init>(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->OK:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    .line 585
    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v4, Lcom/metamoji/lib/dialog/UtStandardString;->DONE:Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v6, 0x1

    const-string v2, "DONE"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;-><init>(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V

    sput-object v1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    .line 586
    new-instance v2, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v5, Lcom/metamoji/lib/dialog/UtStandardString;->CLOSE:Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v7, 0x1

    const-string v3, "CLOSE"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;-><init>(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V

    sput-object v2, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CLOSE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    .line 588
    new-instance v3, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v6, Lcom/metamoji/lib/dialog/UtStandardString;->CANCEL:Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "CANCEL"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;-><init>(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V

    sput-object v3, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    .line 589
    new-instance v4, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v7, Lcom/metamoji/lib/dialog/UtStandardString;->BACK:Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v9, 0x0

    const-string v5, "BACK"

    const/4 v6, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;-><init>(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V

    sput-object v4, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->BACK:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    .line 590
    new-instance v5, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v8, Lcom/metamoji/lib/dialog/UtStandardString;->CLOSE:Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v10, 0x0

    const-string v6, "CLOSE_LEFT"

    const/4 v7, 0x5

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;-><init>(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V

    sput-object v5, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CLOSE_LEFT:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    .line 592
    new-instance v6, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    sget-object v9, Lcom/metamoji/lib/dialog/UtStandardString;->NONE:Lcom/metamoji/lib/dialog/UtStandardString;

    const/4 v11, 0x0

    const-string v7, "NONE"

    const/4 v8, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;-><init>(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V

    sput-object v6, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->NONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-static {}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->$values()[Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/metamoji/lib/dialog/UtStandardString;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtStandardString;",
            "ZZ)V"
        }
    .end annotation

    .line 583
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->string:Lcom/metamoji/lib/dialog/UtStandardString;

    iput-boolean p4, p0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->positive:Z

    iput-boolean p5, p0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->blueColor:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object v0
.end method


# virtual methods
.method public final getBlueColor()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->blueColor:Z

    return v0
.end method

.method public final getPositive()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->positive:Z

    return v0
.end method

.method public final getString()Lcom/metamoji/lib/dialog/UtStandardString;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->string:Lcom/metamoji/lib/dialog/UtStandardString;

    return-object v0
.end method
