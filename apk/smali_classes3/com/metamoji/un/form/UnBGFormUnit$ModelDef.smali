.class public Lcom/metamoji/un/form/UnBGFormUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnBGFormUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnBGFormUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final BLANK:Ljava/lang/String; = "blank"

.field public static final COLS:Ljava/lang/String; = "cols"

.field public static final FORM_REVISION_LATEST:I = 0x1

.field public static final FRAME:Ljava/lang/String; = "frame"

.field public static final FRAMES:Ljava/lang/String; = "frames"

.field public static final ROWS:Ljava/lang/String; = "rows"

.field public static final TYPES:Ljava/lang/String; = "types"

.field public static final VALUES:Ljava/lang/String; = "values"

.field public static final VERSION_LATEST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/form/UnBGFormUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/form/UnBGFormUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/metamoji/un/form/UnBGFormUnit$ModelDef;->this$0:Lcom/metamoji/un/form/UnBGFormUnit;

    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    return-void
.end method
