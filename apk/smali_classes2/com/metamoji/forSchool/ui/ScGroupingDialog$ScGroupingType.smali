.class public Lcom/metamoji/forSchool/ui/ScGroupingDialog$ScGroupingType;
.super Ljava/lang/Object;
.source "ScGroupingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScGroupingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScGroupingType"
.end annotation


# static fields
.field public static final GROUP_COUNT:I = 0x1

.field public static final PERSON_COUNT:I


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog$ScGroupingType;->this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
