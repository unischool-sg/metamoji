.class public Lcom/metamoji/un/form/UnRuledlineUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnRuledlineUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnRuledlineUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final VERSION_LATEST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/form/UnRuledlineUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/form/UnRuledlineUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/metamoji/un/form/UnRuledlineUnit$ModelDef;->this$0:Lcom/metamoji/un/form/UnRuledlineUnit;

    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    return-void
.end method
