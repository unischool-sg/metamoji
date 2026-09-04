.class public final enum Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;
.super Ljava/lang/Enum;
.source "DocumentSettings2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DlgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

.field public static final enum NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

.field public static final enum NoteTemplateCreate:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

.field public static final enum NoteTemplateSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;
    .locals 3

    .line 78
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    sget-object v1, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteTemplateSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    sget-object v2, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteTemplateCreate:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    const-string v1, "NoteSettings"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    .line 80
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    const-string v1, "NoteTemplateSettings"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteTemplateSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    .line 81
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    const-string v1, "NoteTemplateCreate"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteTemplateCreate:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    .line 78
    invoke-static {}, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->$values()[Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->$VALUES:[Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

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

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 78
    const-class v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;
    .locals 1

    .line 78
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->$VALUES:[Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    return-object v0
.end method
