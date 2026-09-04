.class public Lcom/metamoji/ui/dialog/WebDavListView$Type;
.super Ljava/lang/Object;
.source "WebDavListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/WebDavListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Type"
.end annotation


# static fields
.field public static final DIRECTORY:I = 0x2

.field public static final FILE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavListView;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/WebDavListView;)V
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
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$Type;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
